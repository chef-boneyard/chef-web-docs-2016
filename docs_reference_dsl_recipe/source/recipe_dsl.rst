=====================================================
Recipe DSL
=====================================================
 
.. include:: ../../swaps/swap_desc_a.txt
.. include:: ../../swaps/swap_desc_b.txt
.. include:: ../../swaps/swap_desc_c.txt
.. include:: ../../swaps/swap_desc_d.txt
.. include:: ../../swaps/swap_desc_e.txt
.. include:: ../../swaps/swap_desc_f.txt
.. include:: ../../swaps/swap_desc_g.txt
.. include:: ../../swaps/swap_desc_h.txt
.. include:: ../../swaps/swap_desc_i.txt
.. include:: ../../swaps/swap_desc_j.txt
.. include:: ../../swaps/swap_desc_k.txt
.. include:: ../../swaps/swap_desc_l.txt
.. include:: ../../swaps/swap_desc_m.txt
.. include:: ../../swaps/swap_desc_n.txt
.. include:: ../../swaps/swap_desc_o.txt
.. include:: ../../swaps/swap_desc_p.txt
.. include:: ../../swaps/swap_desc_q.txt
.. include:: ../../swaps/swap_desc_r.txt
.. include:: ../../swaps/swap_desc_s.txt
.. include:: ../../swaps/swap_desc_t.txt
.. include:: ../../swaps/swap_desc_u.txt
.. include:: ../../swaps/swap_desc_v.txt
.. include:: ../../swaps/swap_desc_w.txt
.. include:: ../../swaps/swap_desc_x.txt
.. include:: ../../swaps/swap_desc_y.txt
.. include:: ../../swaps/swap_desc_z.txt
.. include:: ../../swaps/swap_http.txt
.. include:: ../../swaps/swap_names.txt
.. include:: ../../swaps/swap_notes.txt


.. include:: ../../includes/includes_chef_dsl_recipe.rst


FROM THE WIKI

The Chef Server has core features that are useful in Recipes to build fully automated dynamic infrastructure.

* Search Indexes
* Data Bags
* Encrypted Data Bags

The Chef Recipe DSL has keywords for using each of these features.

Recipe Helper Methods

There are four helper methods available in Chef recipes for determining the node's platform.

platform?
platform_family?
value_for_platform
value_for_platform_family
These are Recipe DSL helper methods, and are not available for use outside of Recipes. See the Ruby Conditionals and Techniques section below for more examples.

MIGHT BE GOOD TO PUT HERE:

Including Recipes

Recipes from other cookbooks can be included in a recipe with the include_recipe method. The included recipe's resources will be inserted in order, at the point where include_recipe was called. For example:

include_recipe "apache2::mod_ssl"
Will include the resources defined in recipe apache2::mod_ssl. Note, however, that subsequent calls to include_recipe for the same recipe will have no effect.

You can also pass data from various recipes to one definition. This would be useful if you'd like to update your /etc/aliases, /etc/sudoers, or something similar, with entries from multiple recipes in a single chef run.

Dependencies
When using Chef client/server, you must use cookbook Metadata to declare dependencies on cookbooks' recipes included with include_recipe. This is specified with the "depends" keyword in the metadata.rb of the cookbook.

For example, if the above inclusion of apache2::mod_ssl was in a recipe in the "my_app" cookbook then cookbooks/my_app/metadata.rb would have:

depends "apache2"
This is not required in Chef Solo because all the cookbooks the node will use must be available since Solo doesn't use a Chef Server to distribute cookbooks.

Working with the Recipe DSL
=====================================================
xxxxx

xxxxx -- NEEDS REVIEW
-----------------------------------------------------
xxxxx

http://wiki.opscode.com/display/chef/Using+Different+Platforms

Ruby Conditionals and Techniques

This section describes some common techniques using Ruby conditionals with the node platform attributes.

Use "if" statements
if statement with node platform
if node["platform"] == "ubuntu"
  # do ubuntu things
end
Use "case" statements
case statement with node platform
case node["platform"]
when "debian", "ubuntu"
  # do debian/ubuntu things
when "redhat", "centos", "fedora"
  # do redhat/centos/fedora things
end
case statement with node platform_family
case node["platform_family"]
when "debian"
  # do things on debian-ish platforms (debian, ubuntu, linuxmint)
when "rhel"
  # do things on RHEL platforms (redhat, centos, scientific, etc)
end
Use Ruby's include? method
Outside of recipes, such as in templates or libraries, use include?. This predicate method will return true if the parameter is found in the caller.

include? examples
if ["debian", "ubuntu"].include?(node["platform"])
  # do debian/ubuntu things
end
 
if %w{debian ubuntu}.include?(node["platform"])
  # do debian/ubuntu things with the Ruby array %w{} shortcut
end
 
if %w{rhel}.include?(node["platform_family"])
  # do RHEL things
end
	Ruby Array Syntax Shortcut
The %w syntax is a short cut to create an array without requiring the quotes and commas around the elements if they are strings.
Further Reading

The apache2 cookbook by Opscode contains numerous examples of cross platform support, largely through the use of platform_family.



Methods
=====================================================
xxxxx

attribute?
-----------------------------------------------------
xxxxx

FROM WIKI

attribute?
The node.attribute? method will return true if the specified node attribute is defined.

if node.attribute?('ipaddress')
  # the node has an ipaddress
end


data_bag
-----------------------------------------------------
xxxxx

FROM THE WIKI

Data Bags
The Chef Server can have arbitrary stores of JSON data called Data Bags, which can also be Encrypted Data Bags. Each bag is a container of one or more items. These items can be loaded in recipes. Given the bag "apps", and the following item "my_app":

{
  "id": "my_app",
  "repository": "git://github.com/company/my_app.git"
}
We can access the item in a recipe:

my_bag = data_bag_item("apps", "my_app")
The item's keys and values can be accessed like a Ruby Hash.

my_bag["repository"] #=> "git://github.com/company/my_app.git"

data_bag_item
-----------------------------------------------------
xxxxx


platform?
-----------------------------------------------------
xxxxx

platform?
The platform? method will return true if one of the parameters matches the node 'platform'. This method takes a comma separated list of platforms.::

   if platform?("redhat", "centos", "fedora")
     # code for only redhat family systems.
   end
    
   if platform?("ubuntu")
     # code for only ubuntu systems
   end

MORE FROM WIKI:

platform? and platform_family?
The platform? method will return true if one of the parameters matches the node 'platform'. This method takes a comma separated list of platforms.

The platform_family? method will return true if one of the parameters matches the node 'platform_family'. This method takes a comma separated list of platforms.

These are predicate methods.

platform?
if platform?("ubuntu")
  # do ubuntu things
end
 
if platform?("freebsd", "openbsd")
  # do bsd things
end
platform_family?
if platform_family?("rhel")
  # do RHEL things
end
 
if platform_family?("debian", "rhel")
  # do things on debian and rhel families
end

FROM RUBYDOC:

(Boolean) platform?(*args)
Given a list of platforms, returns true if the current recipe is being run on a node with that platform, false otherwise.

(Boolean) platform?(*args)

Given a list of platforms, returns true if the current recipe is being run on a node with that platform, false otherwise.

Parameters

args
A list of platforms. Each platform can be in string or symbol format.
Returns

true
If the current platform is in the list
false
If the current platform is not in the list
Returns:
(Boolean)

platform_family?
-----------------------------------------------------
xxxxx



FROM RUBYDOC

(Boolean) platform_family?(*args)
Given a list of platform families, returns true if the current recipe is being run on a node within that platform family, false otherwise.

(Boolean) platform_family?(*args)

Given a list of platform families, returns true if the current recipe is being run on a node within that platform family, false otherwise.

Parameters

args
A list of platform families. Each platform family can be in string or symbol format.
Returns

true
if the current node platform family is in the list.
false
if the current node platform family is not in the list.
Returns:
(Boolean)


resources
-----------------------------------------------------

FROM THE WIKI

resources
The resources method will look up the specified resource in the Resource Collection. It has two syntaxes. This is preferred:

resources("resource_type[resource_name]")
# e.g.,
resources("package[apache2]")
This is a valid but older style:

resources(:resource_type => "resource_name")
# e.g.,
resources(:package => "apache2")
This can be used to modify a resource later on in a recipe.

file "/etc/hosts" do
  content "127.0.0.1 localhost.localdomain localhost"
end
 
# later in the recipe, or elsewhere
 
f = resources("file[/etc/hosts]")
f.mode 00644

search
-----------------------------------------------------
xxxxx


FROM THE WIKI

Search
A basic search query in a recipe looks like this:

search(:node, "attribute:value")
Searches can be assigned to variables and then used elsewhere in a recipe. For example, we could search for all nodes with the role "webserver" assigned, then render a template with them.

webservers = search(:node, "role:webserver")
 
template "/tmp/list_of_webservers" do
  source "list_of_webservers.erb"
  variables(:webservers => webservers)
end
For more information on using search in recipes, and search queries in general, see the Search documentation. For more information on the Template resource, see its section on the Resources#Template page.

MIGHT LOOK TO INCLUDE SOME OF THE SEARCH TOPICS HERE TOO

tag, tagged?, and untag << MAYBE DON'T USE?
-----------------------------------------------------
xxxxx

To use tags in your recipe simply

tag('mytag')
If you want to test if a machine is tagged

tagged?('mytag')
will return true or false. tagged? Takes an array as an argument.

To remove a tag

untag('mytag')
So all in all

tag("machine") 
 
if tagged?("machine") 
Chef::Log.info("Hey I'm #{node[:tags]}") 
end 
 
untag("machine") 
 
if not tagged?("machine") 
Chef::Log.info("I has no tagz") 
end
Will output

[Thu, 22 Jul 2010 18:01:45 +0000] INFO: Hey I'm machine 
[Thu, 22 Jul 2010 18:01:45 +0000] INFO: I has no tagz 


value_for_platform
-----------------------------------------------------
xxxxx

value_for_platform
The value_for_platform method uses a hash to select a particular value based on the node 'platform' and node 'platform_version'.

value_for_platform syntax
value_for_platform(platform => { platform_version => value })
For example, the following will set the package_name Ruby variable to "httpd" on Red Hat family distributions, or "apache2" on Debian family distributions.

value_for_platform example::

   package_name = value_for_platform(
     ["centos", "redhat", "suse", "fedora" ] => {
      "default" => "httpd"
     },
     ["ubuntu", "debian"] => {
      "default" => "apache2"
     }
   )

http://community.opscode.com/cookbooks/apache2

MORE FROM WIKI PAGES:

value_for_platform and value_for_platform_family
The value_for_platform method uses a hash to select a particular value based on the node 'platform' and node 'platform_version'.

The value_for_platform_family method uses a hash to select a particular value based on the node 'platform_family'.

On openbsd, package will be "apache-couchdb", on gentoo, it will be "dev-db/couchdb" and on all other platforms it will be "couchdb"

value_for_platform
package = value_for_platform(
  "openbsd" => { "default" => "apache-couchdb" },
  "gentoo" => { "default" => "dev-db/couchdb" },
  "default" => "couchdb"
)
On rhel, fedora and suse families, package will be "httpd-devel". On debian family, it will be "apache2-dev"

value_for_platform_family
package = value_for_platform_family(
  ["rhel", "fedora", "suse"] => "httpd-devel",
   "debian" => "apache2-dev"
)

FROM RUBYDOC

(Object) value_for_platform(platform_hash)
Given a hash similar to the one we use for Platforms, select a value from the hash.

(Object) value_for_platform(platform_hash)

Given a hash similar to the one we use for Platforms, select a value from the hash. Supports per platform defaults, along with a single base default. Arrays may be passed as hash keys and will be expanded.

Parameters

platform_hash
A platform-style hash.
Returns

value
Whatever the most specific value of the hash is.


value_for_platform_family
-----------------------------------------------------
xxxxx


FROM RUBYDOC

(Object) value_for_platform_family(platform_family_hash)
Given a hash mapping platform families to values, select a value from the hash.

(Object) value_for_platform_family(platform_family_hash)

Given a hash mapping platform families to values, select a value from the hash. Supports a single base default if platform family is not in the map. Arrays may be passed as hash keys and will be expanded.

Parameters

platform_family_hash
A hash in the form { platform_family_name => value }
Returns

value
Whatever the most specific value of the hash is.

    
  