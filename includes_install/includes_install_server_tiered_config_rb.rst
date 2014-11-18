.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |chef server rb| file that is located in the ``/etc/opscode/`` directory describes the topology of the tiered configuration. On the backend machine, create a file named |chef server rb| and save it in the ``/etc/opscode/`` directory.

Add the following settings to the |chef server rb| file:

#. Define the topology type:

   .. code-block:: ruby

      topology "tier"

#. Define the backend server:

   .. code-block:: ruby

      server "FQDN",
        :ipaddress => "IP_ADDRESS",
        :role => "backend",
        :bootstrap => true

   Replace ``FQDN`` with the |fqdn| of the server and ``IP_ADDRESS`` with the IP address of the server. The role is a backend machine is ``"backend"``.

#. Define the backend virtual IP address:

   .. code-block:: ruby

      backend_vip "FQDN",
        :ipaddress => "IP_ADDRESS",
        :device => "eth0",

   Replace ``FQDN`` with the |fqdn| of the server. Replace ``IP_ADDRESS`` with the virtual IP address of the server. The ``:device`` parameter should be the ethernet interface to which the floater virtual IP address will bind. This is typically the public interface of the server.

#. Define each frontend machine:

   .. code-block:: ruby

      server "FQDN",
        :ipaddress => "IP_ADDRESS",
        :role => "frontend"

   Replace ``FQDN`` with the |fqdn| of the frontend machine. Replace ``IP_ADDRESS`` with the IP address of the frontend machine. Set ``:role`` to ``"frontend"``.

   Add separate entry in the |chef server rb| file for each frontend machine.

#. Define the API |fqdn|:

   .. code-block:: ruby

      api_fqdn "FQDN"

   Replace ``FQDN`` with the |fqdn| of the load balanced virtual IP address, which should be equal to the |fqdn| for the service URI that is used by the |chef server|.

#. Run the following command:

   .. code-block:: bash
      
      $ sudo chef-server-ctl reconfigure