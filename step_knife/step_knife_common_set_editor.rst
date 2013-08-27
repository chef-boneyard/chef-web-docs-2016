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

The type of text editor that is used by |knife| can be configured by adding an entry to the |knife rb| file or by setting an ``EDITOR`` environment variable. For example, to configure the text editor to always open with |vim|, add the following to the |knife rb| file:

.. code-block:: ruby

   knife[:editor] = "/usr/bin/vim"

When a |windows| file path is enclosed in a double-quoted string (" "), the same backslash character (``\``) that is used to define the file path separator is also used in |ruby| to define an escape character. The |knife rb| file is a |ruby| file; therefore, file path separators must be escaped. In addition, spaces in the file path must be replaced with``~1`` so that the length of each section within the file path is not more than 8 characters. For example, if EditPad Pro is the text editor of choice and is located at the following path:

   C:\\Program Files (x86)\EditPad Pro\EditPad.exe

the setting in the |knife rb| file would be similar to:

.. code-block:: ruby

   knife[:editor] = "C:\\Progra~1\\EditPa~1\\EditPad.exe"
