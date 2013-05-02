=====================================================
Attributes
=====================================================

.. warning:: DRAFT

An attribute is a specific detail about a node. Attributes are used by |chef| to understand:

* The current state of the node
* What the state of the node was at the end of the previous |chef| run
* What the state of the node should be at the end of the current |chef| run

Attributes are defined by:

* The state of the node itself
* Cookbooks (in attribute files and/or recipes)
* Roles
* Environments

During every |chef| run, the |chef client| builds the attribute list using:

* Data about the node collected from |ohai|
* The node object that was saved to the |chef server| at the end of the previous |chef| run
* The rebuilt node object from the current |chef| run, after it is updated for changes to cookbooks (attribute files and/or recipes), roles, and/or environments, and updated for any changes to the state of the node itself

After the node object is rebuilt, all of attributes are compared, and then the node is updated based on attribute precedence. At the end of every |chef| run, the node object that defines the current state of the node is uploaded to the |chef server| so that it can be indexed for search.

.. the following is NOT part of the generic attribute overview.

|chef| uses six types of attributes to determine the value that is applied to a node during the |chef| run. In addition, |chef| sources attribute values from up to five locations. The combination of attribute types and sources allows for up to 15 different competing values to be available to |chef| during the |chef| run.

So how does |chef| determine which value should be applied? Keep reading to learn more about how attributes work with |chef|, including more about the types of attributes, where attributes are saved, and how |chef| chooses which attribute to apply.

Attribute Types
=====================================================
Attribute types can be any of the following:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute Type
     - Description
   * - ``default``
     - A ``default`` attribute is automatically reset at the start of every |chef| run and has the lowest attribute precedence. A cookbook should be authored to use ``default`` attributes as often as possible.
   * - ``force_default``
     - A ``force_default`` attribute is used to ensure that an attribute defined in a cookbook (by an attribute file or by a recipe) takes precedence over a ``default`` attribute set by a role or an environment.
   * - ``normal``
     - A ``normal`` attribute is a setting that persists on the target system and is never reset during a |chef| run. A ``normal`` attribute has a higher attribute precedence than a ``default`` attribute.
   * - ``override``
     - An ``override`` attribute is automatically reset at the start of every |chef| run and has a higher attribute precedence than ``default``, ``force_default``, and ``normal`` attributes. An ``override`` attribute is most often specified in a recipe, but can be specified in an attribute file, for a role, and/or for an environment. A cookbook should be authored so that it uses ``override`` attributes only when required.
   * - ``force_override``
     - A ``force_override`` attribute is used to ensure that an attribute defined in a cookbook (by an attribute file or by a recipe) takes precedence over an ``override`` attribute set by a role or an environment.
   * - ``automatic``
     - An ``automatic`` attribute contains data that is identified by |ohai| at the beginning of every |chef| run. An ``automatic`` attribute cannot be modified and always has the highest attribute precedence.

At the beginning of a |chef| run, all default, override, and automatic attributes are reset. |chef| rebuilds them using data collected by |ohai| at the beginning of the |chef| run and by attributes that are defined in cookbooks, roles, and environments. Normal attributes are never reset. All attributes are then merged and applied to the node according to attribute precedence. At the conclusion of the |chef| run, all default, override, and automatic attributes disappear, leaving only a collection of normal attributes that will persist until the next |chef| run.

Attribute Sources
=====================================================
Attributes are provided to |chef| from the following locations:

* Nodes (collected by |ohai| at the start of each |chef| run)
* Attribute files (in cookbooks)
* Recipes (in cookbooks)
* Environments
* Roles

If we go back to the `overview of Chef <http://docs.opscode.com/chef_overview.html>`_, but then only focus on where the attributes are located, it looks something like this:

.. image:: ../../images/overview_chef_attributes.png

where

* Many attributes are maintained in the |chef| repository for environments, roles, and cookbooks (attribute files and recipes)
* Many attributes are collected by |ohai| on each individual node
* The attributes that are maintained in the |chef| repository are up to the |chef server| from the workstation, periodically
* During the |chef| run, for each node, |ohai| will collect data about that node
* The |chef client| will pull down the node object from the |chef server| (which contains the attribute data from the previous |chef| run)
* The |chef client| will update the cookbooks on the node (if required), which updates the attributes contained in attribute files and recipes
* The |chef client| will update the role and environment data (if required)

When the |chef| run is finished, the |chef client| pushes the node object to the |chef server|. The updated node object is indexed for search and will be stored until the next |chef| run.

Attribute Precedence
=====================================================
Attributes are always applied to |chef| in the following order:

#. A ``default`` attribute located in an attribute file
#. A ``default`` attribute located in a recipe
#. A ``default`` attribute located in an environment
#. A ``default`` attribute located in role
#. A ``force_default`` attribute located in an attribute file
#. A ``force_default`` attribute located in a recipe
#. A ``normal`` attribute located in an attribute file
#. A ``normal`` attribute located in a recipe
#. An ``override`` attribute located in an attribute file
#. An ``override`` attribute located in a recipe
#. An ``override`` attribute located in a role
#. An ``override`` attribute located in an environment
#. A ``force_override`` attribute located in an attribute file
#. A ``force_override`` attribute located in a recipe
#. An ``automatic`` attribute identified by |ohai| at the start of the |chef| run

where the last attribute in the list is the one that is applied to the node.

.. note:: Yes, the order of application for roles and environments is reversed for ``default`` and ``override`` attributes, where the precedence for ``default`` attributes is environment, then role and for ``override`` attributes is role, then environment. This allows ``override`` attributes for environments to be applied after ``override`` attributes for roles. This allows a role to exist in multiple environments, rather than require a set of roles for each environment.

Examples
=====================================================
The following examples show some of the most common ways that attributes appear in the |chef| repository.

**type: default; source: attribute_file**

.. code-block:: ruby

   default[:graphite][:carbon][:version] = "0.9.10"

**type: default; source: recipe**

.. code-block:: ruby

   example.each do |u|
     example_group << u['id']
   
     node.default['foo']['foo_attribute'] = node['bar']['bar_attribute'] ? node.default['foo']['foo_attribute'] : Array.new
     node.default['foo']['foo_attribute'] << u['blargh'] unless node.default['foo']['foo_attribute'].include?(u['blargh'])
   end

**type: default; source: role**

.. code-block:: ruby

   default_attributes({
     :chef_client => {
       :server_url => "http://chef.local:4000"
     }
   })

**type: override; source: environment**

.. code-block:: ruby

   override_attributes(
     "authorization" => {
       "sudo" => {
         "groups" => ["admin", "foo", "bar"],
         "users" => ["user1","user2"],
         "passwordless" => true,
         "include_sudoers_d" => true
       }
     }
   )

**type: override; source: attribute file**

.. code-block:: ruby

   override['apache']['prefork']['maxclients'] = 8

**type: override; source: role**

.. code-block:: ruby

   override_attributes(
     "foo" => {
       "app_server_role" => "demo",
       "member_port" => "80"
     }
     )
