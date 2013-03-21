.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following |ohai| plugins are available in the |chef| open source community:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Plugin
     - Description
   * - `dell.rb <https://github.com/demonccc/chef-repo/blob/master/plugins/ohai/dell.rb>`_
     - Adds some useful Dell server information to |ohai|. For example: service tag, express service code, storage info, RAC info, and so on. To use this plugin, OMSA and SMBIOS applications need to be installed.
   * - `dpkg.rb <https://github.com/demonccc/chef-repo/blob/master/plugins/ohai/linux/dpkg.rb>`_
     - Adds |debian dpkg| info to |ohai|. This collections information about the status of |debian| packages and about the various packages that are installed.
   * - `ipmi.rb <https://bitbucket.org/retr0h/ohai>`_
     - Adds an |ipmi| mac and IP address to |ohai|, where available.
   * - `kvm_extensions.rb <https://github.com/albertsj1/ohai-plugins/blob/master/kvm_extensions.rb>`_
     - Adds extensions for virtualization attributes to provide additional host and guest information for |kvm|.
   * - `ladvd.rb <https://github.com/demonccc/chef-repo/blob/master/plugins/ohai/linux/ladvd.rb>`_
     - Adds |ladvd| information to |ohai|, when it exists.
   * - `lxc_virtualization.rb <https://github.com/jespada/ohai-plugins/blob/master/lxc_virtualization.rb>`_
     - Adds extensions for virtualization attributes to provide host and guest information for |linux| containers.
   * - `network_addr.rb <https://gist.github.com/1040543>`_
     - Adds extensions for network attributes with additional ``ipaddrtype_iface`` attributes to make it semantically easier to retrieve addresses. For example: ``node['network']['ipaddress_eth0']`` versus ``node['network']['interfaces']['eth0']['addresses'].guesswhichisfirst``.
   * - `network_ports.rb <https://github.com/agoddard/ohai-plugins/blob/master/plugins/network_ports.rb>`_
     - Adds extensions for network attributes so that |ohai| can detect to which interfaces TCP and UDP ports are bound.
   * - `parse_host_plugin.rb <https://github.com/sbates/Chef-odds-n-ends/blob/master/ohai/parse_host_plugin.rb>`_
     - Adds the ability to parse a host name using three top-level attribute and five nested attributes.
   * - `r.rb <https://github.com/stevendanna/ohai-plugins/blob/master/r.rb>`_
     - Adds the ability to collect basic information about the |r project|.
   * - `rpm.rb <https://github.com/demonccc/chef-repo/blob/master/plugins/ohai/linux/rpm.rb>`_
     - Adds |rpm| information to |ohai| and collects information about the status of |rpm| packages and about the various packages that are installed.
   * - `sysctl.rb <https://github.com/spheromak/cookbooks/blob/master/ohai/files/default/sysctl.rb>`_
     - Adds |sysctl| information to |ohai|.
   * - `vserver.rb <https://github.com/albertsj1/ohai-plugins/blob/master/vserver.rb>`_
     - Adds extensions for virtualization attributes to allow a |linux| virtual server host and guest information to be used by |ohai|.
   * - `wtf.rb <https://github.com/cloudant/ohai_plugins/blob/master/wtf.rb>`_
     - Adds the irreverent wtfismyip.com service so that |ohai| can determine a machine's external IPv4 address and geographical location.
   * - `xenserver.rb <https://github.com/spheromak/cookbooks/blob/master/ohai/files/default/xenserver.rb>`_
     - Adds extensions for virtualization attributes to load up |xenserver| host and guest information.
   * - `win32_software.rb <https://github.com/timops/ohai-plugins/blob/master/win32_software.rb>`_
     - Adds the ability for |ohai| to use |windows wmi| discover useful information about software that is installed on any node that is running |windows|.
   * - `win32_svc.rb <https://github.com/timops/ohai-plugins/blob/master/win32_svc.rb>`_
     - Adds the ability for |ohai| to query using |windows wmi| to get information about all services that are registered on a node that is running |windows|.