=====================================================
About Exception and Report Handlers
=====================================================

.. include:: ../../includes_handler/includes_handler.rst

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Method
     - Description
   * - :doc:`essentials_handlers_properties`
     - A handler is a class that inherits from ``Chef::Handler`` and implements the ``report()`` function.
   * - :doc:`essentials_handlers_write`
     - A cookbook called ``chef_handler`` contains a lightweight resource provider that allows custom handlers to be easily included within recipes.
   * - :doc:`essentials_handlers_install`
     - A handler can be installed and configured in two ways: by using the |lwrp chef handler| |lwrp| or by a manual process.
   * - :doc:`essentials_handlers_distribute`
     - A handler can be distributed using a specific cookbook that is provided by |opscode| to help facilitate the distribution of custom |chef| handlers.
   * - :doc:`essentials_handlers_available_handlers`
     - |chef| includes one handler (``JsonFile``) and the |chef| community provides a number of open-source handlers that can be used by anyone in the |chef| community.


.. toctree::
   :hidden:

   essentials_handlers_properties
   essentials_handlers_write
   essentials_handlers_install
   essentials_handlers_distribute
   essentials_handlers_available_handlers

