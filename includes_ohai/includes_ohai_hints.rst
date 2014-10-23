.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

An |ohai| hint is contained in a |json| file:

.. code-block:: javascript

   {
   "hint_name":"hint"
   }

The default directory in which hint files are located is ``/etc/chef/ohai/hints/``. Use the ``Ohai::Config[:hints_path]`` setting in the |client rb| file to customize this location.