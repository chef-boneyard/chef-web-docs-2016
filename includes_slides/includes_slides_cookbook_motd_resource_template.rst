.. The contents of this file are included in multiple slide decks.
.. This file should not be changed in a way that hinders its ability to appear in multiple slide decks.


Use the |resource template| resource when a template is stored a cookbook's ``/templates`` directory:

.. code-block:: python
       
   motd
      ├── Berksfile
      ├── README.md
      ├── chefignore
      ├── metadata.rb
      ├── recipes
      │   └── default.rb
      └── templates
          └── default
              └── motd.erb

This template is then rendered to create a file:

.. code-block:: ruby
       
   Property of <%= @company_name %>
