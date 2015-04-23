.. The contents of this file are included in multiple slide decks.
.. This file should not be changed in a way that hinders its ability to appear in multiple slide decks.


Three platforms, two test suites:

.. code-block:: python

   ---
   driver:
     name: vagrant
   
   provisioner:
     name: chef_zero

.. code-block:: yaml

   platforms:
     - name: ubuntu-12.04
     - name: ubuntu-14.04
     - name: centos-6.4
   
   suites:
     - name: default
       run_list:
         - recipe[apache::default]
     - name: ssl
       run_list:
         - recipe[apache::ssl]
