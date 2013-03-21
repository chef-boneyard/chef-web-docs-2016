.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Certain settings defined by a |knife| plugin can be persisted in the |knife rb| file. This can be done in two ways:

* By using the ``:proc`` attribute of the ``option`` method
* By specifying the configuration setting directly within the ``def`` |ruby| blocks using either ``Chef::Config[:knife][:setting_name] or ``config[:setting_name]``


The following example shows how the ``knife bootstrap`` subcommand checks for a value in the |knife rb| file by using the ``:proc`` attribute:

.. code-block:: ruby

   option :ssh_port,
     :short => "-p PORT",
     :long => "--ssh-port PORT",
     :description => "The ssh port",
     :proc => Proc.new { |key| Chef::Config[:knife][:ssh_port] = key }

where ``Chef::Config[:knife][:ssh_port]`` tells |knife| to check the |knife rb| file for a setting named ``knife[:ssh_port]``.

The following example shows the ``knife bootstrap`` subcommand calling the ``knife ssh`` subcommand for the actual |ssh| part of running a bootstrap operation:

.. code-block:: ruby

   def knife_ssh
     ssh = Chef::Knife::Ssh.new
     ssh.ui = ui
     ssh.name_args = [ server_name, ssh_command ]
     ssh.config[:ssh_user] = Chef::Config[:knife][:ssh_user] || config[:ssh_user]
     ssh.config[:ssh_password] = config[:ssh_password]
     ssh.config[:ssh_port] = Chef::Config[:knife][:ssh_port] || config[:ssh_port]
     ssh.config[:ssh_gateway] = Chef::Config[:knife][:ssh_gateway] || config[:ssh_gateway]
     ssh.config[:identity_file] = Chef::Config[:knife][:identity_file] || config[:identity_file]
     ssh.config[:manual] = true
     ssh.config[:host_key_verify] = Chef::Config[:knife][:host_key_verify] || config[:host_key_verify]
     ssh.config[:on_error] = :raise
     ssh
   end

where

* ``ssh = Chef::Knife::Ssh.new`` creates a new instance of the ``Ssh`` subclass named ``ssh``
* A series of settings in ``knife ssh`` are associated with ``knife bootstrap`` using the  ``ssh.config[:setting_name]`` syntax
* Raises an exception if any aspect of the |ssh| operation fails
