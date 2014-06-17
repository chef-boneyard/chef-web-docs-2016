.. This is an included how-to. 


.. To initialize a |dockerfile| context for an image named "chef/demo" that has a ``run_list`` of ``recipe[apache2]``:

.. code-block:: bash

   $ knife container docker init docker -r recipe[apache2] -b -z

will create a new folder ``docker`` with subfolder ``demo`` in ``Chef::Config[:knife][:dockerfiles_path]``. In ``docker``, a directory named ``chef`` is created, which contains all of the files and folder necessary for the |chef-client| to run successfully inside a container. The |dockerfile| is similar to:

.. code-block:: ruby

   FROM chef/ubuntu_12.04
   ADD chef/ /chef/
   RUN chef-client -c /chef/zero.rb -j /chef/first-boot.json -z
   ADD chef /etc/chef
   RUN chef-init --bootstrap
   ENTRYPOINT ["chef-init"]
   CMD ["--onboot"]
