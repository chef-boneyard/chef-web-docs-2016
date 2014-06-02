.. This is an included how-to. 


.. To create a |dockerfile|:

.. code-block:: bash

   $ knife container docker init -d /path/to/Dockerfile

will create a |dockerfile| similar to:

.. code-block:: ruby

   FROM chef/ubuntu_12.04
   ADD chef/ /chef/
   RUN chef-client -c /chef/zero.rb -j /chef/first-boot.json -z
   ENTRYPOINT ["chef-init"]
