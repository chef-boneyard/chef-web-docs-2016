.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following |ohai| plugins are available in the |chef| open source community:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Plugin
     - Description
   * - dell.rb
     - Adds some useful Dell server information to |ohai|. For example: service tag, express service code, storage info, RAC info, and so on. To use this plugin, OMSA and SMBIOS applications need to be installed. Download this plugin: https://github.com/demonccc/chef-repo/blob/master/plugins/ohai/dell.rb.
   * - dpkg.rb
     - Adds |debian dpkg| info to |ohai|. This collections information about the status of |debian| packages and about the various packages that are installed. Download this plugin: https://github.com/demonccc/chef-repo/blob/master/plugins/ohai/linux/dpkg.rb.
   * - ipmi.rb
     - Adds an |ipmi| mac and IP address to |ohai|, where available. Download this plugin: https://bitbucket.org/retr0h/ohai.
   * - kvm_extensions.rb
     - Adds extensions for virtualization attributes to provide additional host and guest information for |kvm|. Download this plugin: https://github.com/albertsj1/ohai-plugins/blob/master/kvm_extensions.rb.
   * - ladvd.rb
     - Adds |ladvd| information to |ohai|, when it exists. Download this plugin: https://github.com/demonccc/chef-repo/blob/master/plugins/ohai/linux/ladvd.rb.
   * - lxc_virtualization.rb
     - Adds extensions for virtualization attributes to provide host and guest information for |linux| containers. Download this plugin: https://github.com/jespada/ohai-plugins/blob/master/lxc_virtualization.rb.
   * - network_addr.rb
     - Adds extensions for network attributes with additional ``ipaddrtype_iface`` attributes to make it semantically easier to retrieve addresses. For example: ``node['network']['ipaddress_eth0']`` versus ``node['network']['interfaces']['eth0']['addresses'].guesswhichisfirst``. Download this plugin: https://gist.github.com/1040543.
   * - network_ports.rb
     - Adds extensions for network attributes so that |ohai| can detect to which interfaces TCP and UDP ports are bound. Download this plugin: https://github.com/agoddard/ohai-plugins/blob/master/plugins/network_ports.rb.
   * - parse_host_plugin.rb
     - Adds the ability to parse a host name using three top-level attribute and five nested attributes. Download this plugin: https://github.com/sbates/Chef-odds-n-ends/blob/master/ohai/parse_host_plugin.rb.
   * - r.rb
     - Adds the ability to collect basic information about the |r project|. Download this plugin: https://github.com/stevendanna/ohai-plugins/blob/master/r.rb.
   * - rpm.rb
     - Adds |rpm| information to |ohai| and collects information about the status of |rpm| packages and about the various packages that are installed. Download this plugin: https://github.com/demonccc/chef-repo/blob/master/plugins/ohai/linux/rpm.rb.
   * - sysctl.rb
     - Adds |sysctl| information to |ohai|. Download this plugin: https://github.com/spheromak/cookbooks/blob/master/ohai/files/default/sysctl.rb.
   * - vserver.rb
     - Adds extensions for virtualization attributes to allow a |linux| virtual server host and guest information to be used by |ohai|. Download this plugin: https://github.com/albertsj1/ohai-plugins/blob/master/vserver.rb.
   * - wtf.rb
     - Adds the irreverent wtfismyip.com service so that |ohai| can determine a machine's external IPv4 address and geographical location. Download this plugin: https://github.com/cloudant/ohai_plugins/blob/master/wtf.rb.
   * - xenserver.rb
     - Adds extensions for virtualization attributes to load up |xenserver| host and guest information. Download this plugin: https://github.com/spheromak/cookbooks/blob/master/ohai/files/default/xenserver.rb.
   * - win32_software.rb
     - Adds the ability for |ohai| to use |windows wmi| discover useful information about software that is installed on any node that is running |windows|. Download this plugin: https://github.com/timops/ohai-plugins/blob/master/win32_software.rb.
   * - win32_svc.rb
     - Adds the ability for |ohai| to query using |windows wmi| to get information about all services that are registered on a node that is running |windows|. Download this plugin: https://github.com/timops/ohai-plugins/blob/master/win32_svc.rb.