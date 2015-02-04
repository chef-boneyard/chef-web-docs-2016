.. THIS PAGE DOCUMENTS chef-client version 10.latest

=====================================================
An Overview of |chef|
=====================================================

Welcome to |chef|!

|chef| is a powerful automation platform that transforms complex infrastructure into code, bringing your servers and services to life. Whether you’re operating in the cloud, on-premises, or a hybrid, |chef| automates how applications are configured, deployed, and managed across your network, no matter its size.

|chef| is built around simple concepts: achieving desired state, centralized modeling of IT infrastructure, and resource primitives that serve as building blocks. These concepts enable you to quickly manage any infrastructure with |chef|. These very same concepts allow |chef| to handle the most difficult infrastructure challenges on the planet.

Anything that can run the |chef client| can be managed by |chef|. For instance, you can manage physical machines, virtual machines, containers, or cloud-based instances. The |chef client| is an agent that runs on a node and performs the actual tasks that configure it. The |chef server| is the central repository for all configuration data. The |chef client| and |chef server| communicate with each other. For secure communications, they use a combination of public and private keys that ensures the |chef server| responds only to requests made by the |chef client|.

|chef| Components
=====================================================
The following diagram shows the relationships between the various elements of |chef|, including the nodes, the server, and the workstations. These elements work together to provide the |chef client| the information and instruction that it needs so that it can do its job.

|chef| comprises three main elements: a server, one (or more) nodes, and at least one workstation. 

* The |chef server| acts as a hub that is available to every node in the organization. This ensures that the right cookbooks (and recipes) are available, that the right policies are being applied, that the node object used during the previous |chef client| run is available to the current |chef client| run, and that all of the nodes that will be maintained by the |chef client| are registered and known to the |chef server|. 
* The workstation is the location from which cookbooks (and recipes) are authored, cookbooks (and recipes) are tested, policy data (such as roles, environments, and data bags) are defined, data is synchronized with the |chef repo|, and data is uploaded to the |chef server|. 
* Each node contains a |chef client| that performs the various infrastructure automation tasks that are required, including pulling configuration data from the |chef server| as it is required during the |chef client| run.

The following sections discuss these elements (and their various components) in more detail.

Nodes
=====================================================
.. include:: ../../includes_node/includes_node.rst

The following types of nodes can be managed:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Feature
     - Description
   * - .. image:: ../../images/icon_node_cloud.png
     - A cloud-based node is hosted in an external cloud-based service, such as |amazon vpc|, |openstack|, |rackspace|, |google compute engine|, |linode|, or |azure|. Plugins are available for |knife| that provide support for external cloud-based services. |knife| can use these plugins to create instances on cloud-based services. Once created, the |chef client| can be used to deploy, configure, and maintain those instances.
   * - .. image:: ../../images/icon_node_physical.png
     - A physical node is typically a server or a virtual machine, but it can be any active device attached to a network that is capable of sending, receiving, and forwarding information over a communications channel. In other words, a physical node is any active device attached to a network that can run a |chef client| and also allow that |chef client| to communicate with a |chef server|.
   * - .. image:: ../../images/icon_node_virtual.png
     - A virtual node is a machine that runs only as a software implementation, but otherwise behaves much like a physical machine.
   * - .. image:: ../../images/icon_node_networking.png
     - A network node is a networking device---a switch, a router, a VLAN---that is being managed by a |chef client|.

Some important components on nodes include:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Feature
     - Description
   * - .. image:: ../../images/icon_chef_client.png
     - A |chef client| is an agent that runs locally on every node that is registered with the |chef server|. When a |chef client| is run, it will perform all of the steps that are required to bring the node into the expected state, including: registering and authenticating the node with the |chef server|, building the node object, synchronizing cookbooks, compiling the resource collection by loading each of the required cookbooks, including recipes, attributes, and all other dependencies, taking the appropriate and required actions to configure the node, and looking for exceptions and notifications, handling each as required.
       
       RSA public key-pairs are used to authenticate the |chef client| with the |chef server| every time a |chef client| needs access to data that is stored on the |chef server|. This prevents any node from accessing data that it shouldn't and it ensures that only nodes that are properly registered with the |chef server| can be managed.
   * - .. image:: ../../images/icon_ohai.png
     - |ohai| is a tool that is used to detect attributes on a node, and then provide these attributes to the |chef client| at the start of every |chef client| run. |ohai| is required by the |chef client| and must be present on a node. (|ohai| is installed on a node as part of the |chef client| install process.)

Workstations
=====================================================
A workstation is a computer that is configured to run |knife|, to synchronize with the |chef repo|, and interact with a single |chef server|. The workstation is the location from which most users will do most of their work, including:

* Developing cookbooks and recipes (and authoring them using |ruby|)
* Keeping the |chef repo| synchronized with version source control
* Using |knife| to upload items from the |chef repo| to the |chef server|
* Configuring organizational policy, including defining roles and environments and ensuring that critical data is stored in data bags
* Interacting with nodes, as (or when) required, such as performing a bootstrap operation

Some important components of workstations include:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Feature
     - Description
   * - .. image:: ../../images/icon_knife.png
     - |knife| is a command-line tool that provides an interface between a local |chef repo| and the |chef server|. |knife| helps users to manage: nodes, cookbooks and recipes, roles, stores of |json| data (data bags), including encrypted data, environments, cloud resources, including provisioning, the installation of the |chef client| on management workstations, searching of indexed data on the |chef server|.
       
       RSA public key-pairs are used to authenticate |knife| with the |chef server| every time |knife| attempts to access the |chef server|. This ensures that each instance of |knife| is properly registered with the |chef server| and that only trusted users can make changes to the data.
   * - .. image:: ../../images/icon_repository.png
     - The |chef repo| is the location in which the following data objects are stored: cookbooks (including recipes, versions, cookbook attributes, resources, providers, libraries, and templates), roles, data bags, environments, configuration files (for clients, workstations, and servers). The |chef repo| is located on a workstation and should be synchronized with a version control system, such as |git|. All of the data in the |chef repo| should be treated like source code. 

System administrators and developers know best about how their infrastructure should be put together. Therefore, the |chef client| makes as few decisions on its own as possible. When a decision must be made, the |chef client| uses a reasonable default setting that can be easily changed by the system administrators and developers, most often by defining attributes in cookbooks that take precedence over the default attributes present on nodes.

The Server
=====================================================
The |chef server| acts as a hub for configuration data. The |chef server| stores cookbooks, the policies that are applied to nodes, and metadata that describes each registered node that is being managed by the |chef client|. Nodes use the |chef client| to ask the |chef server| for configuration details, such as recipes, templates, and file distributions. The |chef client| then does as much of the configuration work as possible on the nodes themselves (and not on the |chef server|). This scalable approach distributes the configuration effort throughout the organization.

There are three types of servers:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Server
     - Description
   * - Enterprise Chef
     - |chef server oec| evolved out of a need for customers to have a highly scalable server with the same functionality as hosted |chef server oec|, but located on-premises and managed from behind the firewall.
   * - Hosted Enterprise Chef
     - Hosted |chef server oec| is a version of the |chef server| that is hosted by |company_name|. Hosted |chef server oec| is cloud-based, scalable, and available (24x7/365), with resource-based access control. Hosted |chef server oec| has the same automation capabilities of any |chef server|, but without requiring it to be set up and managed from behind the firewall.
   * - Open Source Chef
     - The |chef server osc| server is a free version of the |chef server|. Each instance of the |chef server osc| server must be configured and managed locally, including data migrations, applying updates, and ensuring that the local infrastructure scales appropriately. The |chef server osc| server includes support from the community. Support from |company_name| is optional.

An |chef api client| is any machine that has permission to use the |api chef server| to communicate with the |chef server|. An |chef api client| is typically a node (on which the |chef client| runs) or a workstation (on which |knife| runs), but can also be any other machine configured to use the |api chef server|.

In addition to node objects, policy, and cookbooks, a |chef server| includes:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Feature
     - Description
   * - .. image:: ../../images/icon_search.png
     - Search indexes allow queries to be made for any type of data that is indexed by the |chef server|, including data bags (and data bag items), environments, nodes, and roles. A defined query syntax is used to support search patterns like exact, wildcard, range, and fuzzy. A search is a full-text query that can be done from several locations, including from within a recipe, by using the ``search`` subcommand in |knife|, or by using the ``/search`` or ``/search/INDEX`` endpoints in the |api chef server|. The search engine is based on |apache solr| and is run from the |chef server|.
   * - .. image:: ../../images/icon_manager.png
     - The |chef manage| add-on for |chef server oec| is a web-based interface that provides users a way to manage the following objects from the |chef server|: nodes, cookbooks and recipes, roles, stores of |json| data (data bags), including encrypted data, environments, searching of indexed data, user accounts and user data for the individuals who have permission to log on to and access the |chef server|.

Node Objects
-----------------------------------------------------
For the |chef client|, two important aspects of nodes are groups of attributes and run-lists. An attribute is a specific piece of data about the node, such as a network interface, a file system, the number of clients a service running on a node is capable of accepting, and so on. A run-list is an ordered list of recipes and/or roles that are run in an exact order. The node object consists of the run-list and node attributes, which is a |json| file that is stored on the |chef server|. The |chef client| gets a copy of the node object from the |chef server| during each |chef client| run and places an updated copy on the |chef server| at the end of each |chef client| run.

Some important node objects include:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Feature
     - Description
   * - .. image:: ../../images/icon_node_attribute.png
     - An attribute is a specific detail about a node. Attributes are used by the |chef client| to understand the current state of the node, what the state of the node was at the end of the previous |chef client| run, and what the state of the node should be at the end of the current |chef client| run.
   * - .. image:: ../../images/icon_run_lists.png
     - A run-list defines all of the configuration settings that are necessary for a node that is under management by |chef| to be put into the desired state. A run-list is an ordered list of roles and/or recipes that are run in an exact order; if a recipe appears more than once in the run-list, the |chef client| will never run that recipe twice, always specific to the node on which it runs, though it is possible for many nodes to have run-lists that are similar or even identical, stored as part of the node object on the |chef server|, and maintained using |knife| and uploaded to the |chef server| or via the |chef manage| user interface.

Policy
-----------------------------------------------------
Policy settings can be used to map business and operational requirements, such as process and workflow, to settings and objects stored on the |chef server|:

* Roles define server types, such as "web server" or "database server"
* Environments define process, such as "dev", "staging", or "production"
* Certain types of data---passwords, user account data, and other sensitive items---can be placed in data bags, which are located in a secure sub-area on the |chef server| that can only be accessed by nodes that authenticate to the |chef server| with the correct |ssl| certificates
* The cookbooks (and cookbook versions) in which organization-specific configuration policies are maintained

Some important aspects of policy include:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Feature
     - Description
   * - .. image:: ../../images/icon_roles.png
     - A role is a way to define certain patterns and processes that exist across nodes in an organization as belonging to a single job function. Each role consists of zero (or more) attributes and a run list. Each node can have zero (or more) roles assigned to it. When a role is run against a node, the configuration details of that node are compared against the attributes of the role, and then the contents of that role's run list are applied to the node's configuration details. When a |chef client| runs, it merges its own attributes and run lists with those contained within each assigned role.
   * - .. image:: ../../images/icon_data_bags.png
     - A data bag is a global variable that is stored as |json| data and is accessible from a |chef server|. A data bag is indexed for searching and can be loaded by a recipe or accessed during a search.
   * - .. image:: ../../images/icon_environments.png
     - An environment is a way to map an organization's real-life workflow to what can be configured and managed when using |chef server|. Every organization begins with a single environment called the ``_default`` environment, which cannot be modified (or deleted). Additional environments can be created to reflect each organization's patterns and workflow. For example, creating ``production``, ``staging``, ``testing``, and ``development`` environments. Generally, an environment is also associated with one (or more) cookbook versions.

Cookbooks
-----------------------------------------------------
A cookbook is the fundamental unit of configuration and policy distribution. Each cookbook defines a scenario, such as everything needed to install and configure |mysql|, and then it contains all of the components that are required to support that scenario, including:

* Attribute values that are set on nodes
* Definitions that allow the creation of reusable collections of resources
* File distributions
* Libraries that extend the |chef client| and/or provide helpers to |ruby| code
* Recipes that specify which resources to manage and the order in which those resources will be applied
* Custom resources and providers
* Templates
* Versions
* Metadata about recipes (including dependencies), version constraints, supported platforms, and so on

The |chef client| uses |ruby| as its reference language for creating cookbooks and defining recipes, with an extended DSL for specific resources. A reasonable set of resources are available to the |chef client|, enough to support many of the most common infrastructure automation scenarios; however, this DSL can also be extended when additional resources and capabilities are required.

Some important components of cookbooks include:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Feature
     - Description
   * - .. image:: ../../images/icon_node_attribute.png
     - An attribute can be defined in a cookbook (or a recipe) and then used to override the default settings on a node. When a cookbook is loaded during a |chef client| run, these attributes are compared to the attributes that are already present on the node. When the cookbook attributes take precedence over the default attributes, the |chef client| will apply those new settings and values during the |chef client| run on the node.
   * - .. image:: ../../images/icon_cookbook_recipes.png
     - A recipe is the most fundamental configuration element within the organization. A recipe is authored using |ruby|, which is a programming language designed to read and behave in a predictable manner, is mostly a collection of resources, defined using patterns (resource names, attribute-value pairs, and actions); helper code is added around this using |ruby|, when needed, must define everything that is required to configure part of a system, must be stored in a cookbook, may be included in a recipe, may use the results of a search query and read the contents of a data bag (including an encrypted data bag), may have a dependency on one (or more) recipes, may tag a node to facilitate the creation of arbitrary groupings, must be added to a run-list before it can be used by the |chef client|, is always executed in the same order as listed in a run-list.
   * - .. image:: ../../images/icon_cookbook_versions.png
     - A cookbook version represents a set of functionality that is different from the cookbook on which it is based. A version may exist for many reasons, such as ensuring the correct use of a third-party component, updating a bug fix, or adding an improvement. A cookbook version is defined using syntax and operators, may be associated with environments, cookbook metadata, and/or run-lists, and may be frozen (to prevent unwanted updates from being made).

The |chef client| will run a recipe only when asked. When the |chef client| runs the same recipe more than once, the results will be the same system state each time. When a recipe is run against a system, but nothing has changed on either the system or in the recipe, the |chef client| won't change anything.

In addition to attributes, recipes, and versions, the following items are also part of cookbooks:

* Resources and providers. A resource is a package, a service, a group of users, and so on. A resource tells the |chef client| which provider to use during a |chef client| run for various tasks, such as installing packages, running |ruby| code, or accessing directories and file systems. A resource is generic: "install program A" while a provider knows what to do with that process on |debian| and |ubuntu| and |windows|. A provider defines the steps that are required to bring that piece of the system into the desired state. Default providers exist that cover the most common scenarios.
* File distributions. A file distribution is a specific type of resource that tells a cookbook how to distribute files, including by node, by platform, or by file version.
* Definitions. A definition is used to create new resources by stringing together one (or more) existing resources.
* Libraries. A library allows the use of arbitrary |ruby| code in a cookbook, either as a way to extend the |chef client| language or to implement a new class.
* Templates. A template is a file written in markup language that uses |ruby| statements to solve complex configuration scenarios.
* Configuration files. A metadata file to ensure that each cookbook is correctly deployed to each node.

Conclusion
=====================================================
The key underlying principle of |chef| is that you (the user) know best about what your environment is, what it should do, and how it should be maintained. The |chef client| is designed to not make assumptions about any of those things. Only the individuals on the ground---that's you and your team---understand the technical problems and what is required to solve them. Only your team can understand the human problems (skill levels, audit trails, and other internal issues) that are unique to your organization and whether any single technical solution is viable.

The idea that you know best about what should happen in your organization goes hand-in-hand with the notion that you still need help keeping it all running. It is rare that a single individual knows everything about a very complex problem, let alone knows all of the steps that may be required to solve them. The same is true with tools. |chef| provides help with infrastructure management. And |chef| can help solve very complicated problems. |chef| also has a large community of users who have a lot of experience solving a lot of very complex problems. That community can provide knowledge and support in areas that your organization may not have and (along with |chef|) can help your organization solve any complex problem.


