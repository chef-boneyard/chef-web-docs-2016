.. The contents of this file are included in multiple slide decks.
.. This file should not be changed in a way that hinders its ability to appear in multiple slide decks.


The next level subdirectory will match the suite name:

.. code-block:: python

   test/
     └── integration
         └── default
             └── serverspec
                 └── default_spec.rb

.. code-block:: yaml

   suites:
     - name: default
       run_list:
         - recipe[apache::default]
