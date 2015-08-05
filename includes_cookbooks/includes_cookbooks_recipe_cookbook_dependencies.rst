.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

If a cookbook has a dependency on a recipe that is located in another cookbook, that dependency must be declared in the |metadata rb| file for that cookbook using the ``depends`` keyword.

.. note:: Declaring cookbook dependencies is not required with |chef solo|.

For example, if the following recipe is included in a cookbook named ``my_app``:

.. code-block:: ruby

   include_recipe 'apache2::mod_ssl'

Then the |metadata rb| file for that cookbook would have:

.. code-block:: ruby

   depends 'apache2'
