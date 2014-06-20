.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The following attributes are used to configure ``kitchen-vagrant`` for |chef|:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Attribute
     - Description
   * - ``box``
     - Required. Use to specify the box on which |vagrant| will run. Default value: computed from the platform name of the instance.
   * - ``box_url``
     - Use to specify the URL at which the configured box is located. Default value: computed from the platform name of the instance.
   * - ``customize``
     - A hash of key-value pairs that define customizations that should be made to the |vagrant| virtual machine. For example: ``customize: memory: 1024 cpuexecutioncap: 50``.
   * - ``dry_run``
     - Use to debug commands using the |vagrant| command line tool. When this setting is set to ``true``, all commands will be displayed rather than executed.
   * - ``guest``
     - Use to specify the ``config.vm.guest`` setting in the default ``Vagrantfile``.
   * - ``network``
     - Use to specify an array of network customizations to be applied to the virtual machine. Default value: ``[]``. For example: ``network: - ["forwarded_port", {guest: 80, host: 8080}] - ["private_network", {ip: "192.168.33.33"}]``.
   * - ``pre_create_command``
     - Use to run a command immediately prior to ``vagrant up --no-provisioner``.
   * - ``provider``
     - Use to specify the |vagrant| provider. This value must match a provider name in |vagrant|.
   * - ``ssh_key``
     - Use to specify the private key file used for |ssh| authentication.
   * - ``synced_folders``
     - Use to specify a collection of synchronized folders on each |vagrant| instance. Source paths are relative to the |kitchen| root path. Default value: ``[]``. For example: ``synced_folders: - ["data/%{instance_name}", "/opt/instance_data"] - ["/host_path", "/vm_path", "create: true, type: :nfs"]``.
   * - ``username``
     - Use to specify the username for |ssh| authentication. Default value: username for the default |vagrant| user.   * - ``vagrantfile_erb``
     - Use to specify an alternate ``Vagrantfile`` |erb| template to be used by this driver. Should be a rarely-used setting.
   * - ``vm_hostname``
     - Use to specify the internal hostname for the instance. This is not required when connecting
to a |vagrant| virtual machine. Set this to ``false`` to prevent this value from being rendered in the default ``Vagrantfile``. Default value: computed from the platform name of the instance.
