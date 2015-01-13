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
   
   There are likely some formatting issues. But let's identify them and then figure out how to make them go away in the places where reusability is extra important. For example, to reuse the command options, the entire approach had to be refactored, but once done 100% reuse.

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


