.. The contents of this file are included in multiple slide decks.
.. This file should not be changed in a way that hinders its ability to appear in multiple slide decks.


Use the |resource cookbook_file| resource for a file that is stored a cookbook's ``/files`` directory:

.. code-block:: python

   motd
      ├── Berksfile
      ├── README.md
      ├── chefignore
      ├── files
      │   └── default
      │       └── motd
      ├── metadata.rb
      ├── recipes
      └── default.rb
