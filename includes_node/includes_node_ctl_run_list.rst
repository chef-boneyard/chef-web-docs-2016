.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.
.. This file documents specifc behavior related to the -j option in the chef-client, chef-solo, and chef-shell executables.

Use this option to define a ``run_list`` object. For example, a |json| file similar to:

.. code-block:: javascript

   "run_list": [
     "recipe[base]",
     "recipe[foo]",
     "recipe[bar]",
     "role[webserver]"
   ],

may be used by running ``chef-client -j path/to/file.json``.

In certain situations this option may be used to update ``normal`` attributes.
