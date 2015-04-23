.. The contents of this file are included in multiple slide decks.
.. This file should not be changed in a way that hinders its ability to appear in multiple slide decks.


#. Open ``apache/.kitchen.yml``.
#. Add:

   .. code-block:: yaml
   
      ---
      driver:
        name: vagrant
      
      provisioner:
        name: chef_zero
      
      platforms:
        - name: ubuntu-12.04
        - name: centos-6.4
      
      suites:
        - name: default
          run_list:
            - recipe[apache::default]
          attributes:

#. Save the file.
