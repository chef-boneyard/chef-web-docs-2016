=====================================================
Recipe DSL
=====================================================
 
.. include:: ../../swaps/swap_descriptions.txt
.. include:: ../../swaps/swap_http.txt
.. include:: ../../swaps/swap_names.txt
.. include:: ../../swaps/swap_notes.txt
.. include:: ../../swaps/swap_resources.txt


.. include:: ../../includes/includes_chef_dsl_recipe.rst


FIRST STEP: MAKE SURE THE LIST OF METHODS BELOW REPRESENTS ALL OF THE METHODS PEOPLE CAN/SHOULD USE IN RECIPES.

ALSO INTEGRATE: http://wiki.opscode.com/display/chef/Using+Different+Platforms


THIS ONE IS MISSING???

attribute?
The node.attribute? method will return true if the specified node attribute is defined.::

   if node.attribute?('ipaddress')
     # the node has an ipaddress
   end


Working with the Recipe DSL
=====================================================
xxxxx

xxxxx -- NEEDS REVIEW
-----------------------------------------------------
xxxxx


Methods
=====================================================
xxxxx

class_from_file -- NEEDS REVIEW
-----------------------------------------------------
xxxxx

convert_to_class_name -- NEEDS REVIEW
-----------------------------------------------------
xxxxx

convert_to_snake_case -- NEEDS REVIEW
-----------------------------------------------------
xxxxx

cookbook_name -- NEEDS REVIEW
-----------------------------------------------------
xxxxx

cookbook_name= -- NEEDS REVIEW
-----------------------------------------------------
xxxxx

data_bag -- NEEDS REVIEW
-----------------------------------------------------
xxxxx

data_bag_item -- NEEDS REVIEW
-----------------------------------------------------
xxxxx

deprecated_ivar -- NEEDS REVIEW
-----------------------------------------------------
xxxxx

filename_to_qualified_string -- NEEDS REVIEW
-----------------------------------------------------
xxxxx

from_file -- NEEDS REVIEW
-----------------------------------------------------
xxxxx

include_recipe -- NEEDS REVIEW
-----------------------------------------------------
xxxxx

load_recipe -- NEEDS REVIEW
-----------------------------------------------------
xxxxx

method_missing -- NEEDS REVIEW
-----------------------------------------------------
xxxxx

node -- NEEDS REVIEW
-----------------------------------------------------
xxxxx

params -- NEEDS REVIEW
-----------------------------------------------------
xxxxx

params= -- NEEDS REVIEW
-----------------------------------------------------
xxxxx

platform? -- NEEDS REVIEW
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

platform_family? -- NEEDS REVIEW
-----------------------------------------------------
xxxxx

recipe -- NEEDS REVIEW
-----------------------------------------------------
xxxxx

recipe= -- NEEDS REVIEW
-----------------------------------------------------
xxxxx

recipe_name -- NEEDS REVIEW
-----------------------------------------------------
xxxxx

recipe_name= -- NEEDS REVIEW
-----------------------------------------------------
xxxxx

require_recipe -- NEEDS REVIEW
-----------------------------------------------------
xxxxx

resources -- NEEDS REVIEW
-----------------------------------------------------
xxxxx

run_context -- NEEDS REVIEW
-----------------------------------------------------
xxxxx

run_context= -- NEEDS REVIEW
-----------------------------------------------------
xxxxx

search -- NEEDS REVIEW
-----------------------------------------------------
xxxxx

snake_case_basename -- NEEDS REVIEW
-----------------------------------------------------
xxxxx

tag -- NEEDS REVIEW
-----------------------------------------------------
xxxxx  

tagged? -- NEEDS REVIEW
-----------------------------------------------------
xxxxx 

untag -- NEEDS REVIEW
-----------------------------------------------------
xxxxx 

value_for_platform -- NEEDS REVIEW
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

value_for_platform_family -- NEEDS REVIEW
-----------------------------------------------------
xxxxx


Instance Variables
=====================================================
xxxxx

@cookbook_name -- NEEDS REVIEW
-----------------------------------------------------
xxxxx

@node -- NEEDS REVIEW
-----------------------------------------------------
xxxxx

@params -- NEEDS REVIEW
-----------------------------------------------------
xxxxx

@recipe_name -- NEEDS REVIEW
-----------------------------------------------------
xxxxx

@run_context -- NEEDS REVIEW
-----------------------------------------------------
xxxxx
  
    
    
   
    
  