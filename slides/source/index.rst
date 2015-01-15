============
Slide Deck 
============

.. revealjs:: First Slide!     

   .. include:: ../../includes_slides/includes_slides.rst

.. revealjs:: Text

   .. include:: ../../includes_slides/includes_slides_text.rst

.. revealjs:: Ordered Lists

   .. include:: ../../includes_slides/includes_slides_lists_ordered.rst
 
.. revealjs:: Unordered Lists

   .. include:: ../../includes_slides/includes_slides_lists_unordered.rst

.. revealjs:: Links

   .. include:: ../../includes_slides/includes_slides_links.rst

.. revealjs:: Tables

   .. include:: ../../includes_slides/includes_slides_tables.rst

.. revealjs:: Code Blocks

   .. include:: ../../includes_slides/includes_slides_code_block.rst

.. revealjs:: Images

   .. include:: ../../includes_slides/includes_slides_image.rst

.. revealjs:: Pulling in some chef-docs

   The next series of slides are just pulling in random chef-docs topics. Mostly to see what they might look like and also to just show that it's super-easy to reuse the chef-docs library in slide decks.

   * Ohai resource
   * chef-client command options
   * examples of using resources (straight from chef-docs)
   
   There are likely some formatting issues. But let's identify them and then figure out how to make them go away in the places where reusability is extra important. For example, to reuse the command options, the entire approach had to be refactored to work as HTML and command output, but once done 100% reuse.

.. revealjs::

 .. revealjs:: Ohai Resource

  .. include:: ../../includes_resources/includes_resource_ohai.rst

 .. revealjs:: Syntax

  .. include:: ../../includes_resources/includes_resource_ohai_syntax.rst

 .. revealjs:: Actions

  .. include:: ../../includes_resources/includes_resource_ohai_actions.rst

 .. revealjs:: Attributes

  .. include:: ../../includes_resources/includes_resource_ohai_attributes.rst

 .. revealjs:: Examples

  **Reload Ohai**

  .. include:: ../../step_resource/step_resource_ohai_reload.rst

  **Reload Ohai after a new user is created**

  .. include:: ../../step_resource/step_resource_ohai_reload_after_create_user.rst

.. revealjs:: Reusing chef-client options

   .. include:: ../../includes_slides/includes_slides_example_command_options.rst

.. revealjs:: Example: package

   To install a package:

   .. include:: ../../step_resource/step_resource_package_install.rst

.. revealjs:: Example: template

   .. include:: ../../step_resource/step_resource_template_library_module.rst

.. revealjs:: Example: service

   .. include:: ../../step_resource/step_resource_service_use_provider_and_supports_attributes.rst

.. revealjs:: Example Lessons

   The next series of slides that begins on the next horizontal slide shows a series of slides from the existing handlers intermediate training. These will go vertically and are just the first cut at seeing what they might look like in a slide deck.

.. revealjs::

 .. revealjs:: Lesson Objectives (Handlers)

  .. include:: ../../includes_slides/includes_slides_handlers_objectives.rst

 .. revealjs:: Handlers

  .. include:: ../../includes_slides/includes_slides_handlers_about.rst

 .. revealjs:: Report Handlers

  .. include:: ../../includes_slides/includes_slides_handlers_report.rst

 .. revealjs:: Exception Handlers

  .. include:: ../../includes_slides/includes_slides_handlers_exception.rst

 .. revealjs:: Start Handlers

  .. include:: ../../includes_slides/includes_slides_handlers_start.rst

 .. revealjs:: Writing Custom Handlers

  .. include:: ../../includes_slides/includes_slides_handlers_custom.rst

 .. revealjs:: Exercise: Download the chef_handler cookbook

  .. include:: ../../includes_slides/includes_slides_handlers_cookbook_download_chef_handler.rst

 .. revealjs:: Exercise: Download the chef-client cookbook

  .. include:: ../../includes_slides/includes_slides_handlers_cookbook_download_chef_client.rst

 .. revealjs:: Exercise: Upload the chef_handler cookbook

  .. include:: ../../includes_slides/includes_slides_handlers_cookbook_upload_chef_handler.rst

 .. revealjs:: Let’s Write a Handler

  .. include:: ../../includes_slides/includes_slides_handlers_custom_email.rst

 .. revealjs:: Library Cookbook Pattern

  .. include:: ../../includes_slides/includes_slides_handlers_custom_email_set_pattern.rst

 .. revealjs:: Exercise: Create a cookbook named ‘email_handler’

  .. include:: ../../includes_slides/includes_slides_handlers_custom_email_add_cookbook.rst

 .. revealjs:: Exercise: Edit the default recipe

  .. include:: ../../includes_slides/includes_slides_handlers_custom_email_edit_default_recipe.rst

 .. revealjs:: The chef_handler Resource

  .. include:: ../../includes_slides/includes_slides_handlers_custom_email_chef_handler.rst

 .. revealjs:: Exercise: Setup the handler

  .. include:: ../../includes_slides/includes_slides_handlers_custom_email_chef_handler_recipe.rst

 .. revealjs:: Exercise: Set the attributes

  .. include:: ../../includes_slides/includes_slides_handlers_custom_email_chef_handler_attributes.rst

 .. revealjs:: Exercise: Write the handler

  .. include:: ../../includes_slides/includes_slides_handlers_custom_email_chef_handler_write.rst

 .. revealjs:: The initialize Method

  .. include:: ../../includes_slides/includes_slides_handlers_custom_email_chef_handler_initialize.rst

 .. revealjs:: The report Method

  .. include:: ../../includes_slides/includes_slides_handlers_custom_email_chef_handler_report_method.rst

 .. revealjs:: The updated_resources Hash

  .. include:: ../../includes_slides/includes_slides_handlers_custom_email_chef_handler_updated_resources.rst

 .. revealjs:: Exercise: Finish email_handler.rb

  .. include:: ../../includes_slides/includes_slides_handlers_custom_email_chef_handler_finish.rst

 .. revealjs:: Other Dependencies

  .. include:: ../../includes_slides/includes_slides_handlers_dependencies.rst
