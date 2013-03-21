=====================================================
Ending a |chef| Run
=====================================================

Sometimes it may be necessary to end a |chef| run before it completes. There are a few ways to do this:

* Using the ``return`` keyword and a condition
* Using the ``raise`` keyword to trigger an unhandled exception
* Using the ``rescue`` block in |ruby| code
* Using ``Chef::Application.fatal!`` to log a fatal message to the |chef| logger and ``STDERR``
* Using an :doc:`exception handler </essentials_handlers>`

Examples
=====================================================
The following examples show various approaches to ending a |chef| run.

**Using the raise keyword**

.. include:: ../../step_recipe/step_recipe_end_chef_run_keyword_raise.rst

**Using the return keyword**

.. include:: ../../step_recipe/step_recipe_end_chef_run_keyword_return.rst

**Using a rescue block**

.. include:: ../../step_recipe/step_recipe_end_chef_run_rescue_block.rst

**Sending a fatal message to a log file**

.. include:: ../../step_recipe/step_recipe_end_chef_run_send_fatal_message.rst