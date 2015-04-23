.. The contents of this file are included in multiple slide decks.
.. This file should not be changed in a way that hinders its ability to appear in multiple slide decks.


A provisioner tells |kitchen| how to configure the node:

.. code-block:: python

   ---
   driver:
     name: vagrant

.. code-block:: yaml

   provisioner:
     name: chef_zero

.. code-block:: python

   platforms:
     - name: ubuntu-12.04
     - name: centos-6.4
   
   suites:
     - name: default
       run_list:
         - recipe[apache::default]
       attributes:
