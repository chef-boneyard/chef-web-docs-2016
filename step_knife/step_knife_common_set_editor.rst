.. This is an included how-to. 


Some |knife| commands, such as ``knife data bag edit``, require that information be edited as |json| data using a text editor. For example, the following command:

.. code-block:: bash

   $ knife data bag edit admins admin_name

will open up the text editor with data similar to:

.. code-block:: javascript

   {
     "id": "admin_name"
   }

Changes to that file can then be made:

.. code-block:: javascript

   {
     "id": "Justin C."
     "description": "I am passing the time by letting time pass over me ..."
   }

The type of text editor that is used by |knife| can be configured by adding or setting an ``EDITOR`` environment variable.  You can also add a setting to the |knife rb| file. For example, to configure the text editor to always open with |vim|, add the following to your |knife.rb|.

.. code-block:: ruby

   knife[:editor] = "/usr/bin/vim"
