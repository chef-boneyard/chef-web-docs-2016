.. The contents of this file are included in multiple slide decks.
.. This file should not be changed in a way that hinders its ability to appear in multiple slide decks.

Some |yaml|:

.. code-block:: yaml

   ---
   section:
     property: value
     etc...

For example, |kitchen yml| file with two platforms and one test suite:

.. code-block:: yaml

   ---
   driver:
     name: vagrant
   
   provisioner:
     name: chef_zero
   
   platforms:
     - name: ubuntu-12.04
   
   suites:
     - name: default
       run_list:
         - recipe[apache::default]
