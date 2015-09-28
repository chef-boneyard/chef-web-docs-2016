=====================================================
Custom Resources
=====================================================

.. warning:: This topic is about building custom resources, starting with |chef client| 12.5 release. For the current iteration of that content, see http://docs.chef.io/release/12-5/release_notes.html#custom-resources. When |chef client| 12.5 releases, the following topics will be updated to point to custom_resources.html: hwrp.html, lwrp.html, lwrp_custom_provider_ruby.html, lwrp_custom_provider.html, lwrp_custom_resource_library.html, lwrp_custom_resource.html, and lwrp_custom.html.

.. include:: ../../includes_custom_resources/includes_custom_resources.rst

Syntax
=====================================================
.. include:: ../../includes_custom_resources/includes_custom_resources_syntax.rst

Example
-----------------------------------------------------
.. include:: ../../includes_custom_resources/includes_custom_resources_syntax_example.rst


Scenario: website Resource
=====================================================
.. include:: ../../includes_custom_resources/includes_custom_resources_slide_website.rst

.. note:: Read this scenario as an HTML presentation at https://docs.chef.io/decks/custom_resources.html.

Create a Cookbook
-----------------------------------------------------
.. include:: ../../includes_custom_resources/includes_custom_resources_slide_website_cookbook.rst

Objectives
-----------------------------------------------------
.. include:: ../../includes_custom_resources/includes_custom_resources_slide_website_objectives.rst

What is needed?
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_custom_resources/includes_custom_resources_slide_website_objectives_requirements.rst


Define Properties
-----------------------------------------------------
.. include:: ../../includes_custom_resources/includes_custom_resources_slide_website_properties.rst

.. include:: ../../includes_custom_resources/includes_custom_resources_slide_website_properties_add.rst


Define Actions
-----------------------------------------------------
.. include:: ../../includes_custom_resources/includes_custom_resources_slide_website_actions.rst


Define Resource
-----------------------------------------------------
.. include:: ../../includes_custom_resources/includes_custom_resources_slide_website_resources.rst

package
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_custom_resources/includes_custom_resources_slide_website_resources_package.rst

template, httpd.service
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_custom_resources/includes_custom_resources_slide_website_resources_template_httpd_service.rst

template, httpd.conf
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_custom_resources/includes_custom_resources_slide_website_resources_template_httpd_conf.rst

directory
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_custom_resources/includes_custom_resources_slide_website_resources_directory.rst

service
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_custom_resources/includes_custom_resources_slide_website_resources_service.rst

Create Templates
-----------------------------------------------------
.. include:: ../../includes_custom_resources/includes_custom_resources_slide_website_templates.rst

httpd.conf.erb
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_custom_resources/includes_custom_resources_slide_website_templates_httpd_conf_erb.rst

Template Variables
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_custom_resources/includes_custom_resources_slide_website_templates_httpd_conf_erb_variables.rst

httpd.service.erb
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_custom_resources/includes_custom_resources_slide_website_templates_httpd_service_erb.rst

Final Resource
-----------------------------------------------------
.. include:: ../../includes_custom_resources/includes_custom_resources_website_final_resource.rst

Final Cookbook Directory
-----------------------------------------------------
.. include:: ../../includes_custom_resources/includes_custom_resources_slide_website_final_cookbook_directory.rst

Recipe
-----------------------------------------------------
.. include:: ../../includes_custom_resources/includes_custom_resources_slide_website_recipe.rst

.. 
.. Test
.. -----------------------------------------------------
.. TBD...
.. 
