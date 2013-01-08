=====================================================
About Templates
=====================================================

.. include:: ../../includes_cookbooks/includes_cookbooks_template.rst

.. note:: |note cookbook template erubis|

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Method
     - Description
   * - :doc:`essentials_cookbook_templates_requirements`
     - To use a template, it must be added to a recipe and an |erb| template must be added to a cookbook.
   * - :doc:`essentials_cookbook_templates_variables`
     - A |chef| template is an |erb| template. An |erb| template allows Ruby code to be embedded inside a text file within specially formatted tags.
   * - :doc:`essentials_cookbook_templates_location_specificity`
     - |chef| will determine the correct template based on the rules that are provided to it.
   * - :doc:`essentials_cookbook_templates_host_notation`
     - The naming of folders within cookbook directories must literally match the host notation used for template specificity matching.
   * - :doc:`essentials_cookbook_templates_transfer_frequency`
     - |chef| caches a template when it is first requested. On each subsequent request for that template, |chef| compares that request to the template located on the |chef server|. If the templates are the same, no transfer occurs.

.. toctree::
   :hidden:

   essentials_cookbook_templates_host_notation
   essentials_cookbook_templates_location_specificity
   essentials_cookbook_templates_requirements
   essentials_cookbook_templates_transfer_frequency
   essentials_cookbook_templates_variables