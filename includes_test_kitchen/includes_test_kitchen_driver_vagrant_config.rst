.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``kitchen-vagrant`` driver can predict the box name for |vagrant| and the download URL that have been published by |company_name|. For example:

.. code-block:: ruby

   platforms:
   - name: ubuntu-10.04
   - name: ubuntu-12.04
   - name: ubuntu-12.10
   - name: ubuntu-13.04
   - name: centos-5.9
   - name: centos-6.4
   - name: debian-7.1.0   

which will generate a configuration file similar to:

.. code-block:: ruby

   platforms:
   - name: ubuntu-10.04
     driver:
       box: opscode-ubuntu-10.04
       box_url: https://opscode-vm-bento.s3.amazonaws.com/vagrant/opscode_ubuntu-10.04_provisionerless.box
   - name: ubuntu-12.04
     driver:
       box: opscode-ubuntu-12.04
       box_url: https://opscode-vm-bento.s3.amazonaws.com/vagrant/opscode_ubuntu-12.04_provisionerless.box
   - name: ubuntu-12.10
     driver:
       box: opscode-ubuntu-12.10
       box_url: ...
   # ...
