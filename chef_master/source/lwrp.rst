=====================================================
About Lightweight Resources
=====================================================

A :doc:`lightweight resource </lwrp>` is a custom resource that creates an abstract approach for defining a set of actions and (for each action) a set of attributes and validation parameters. A lightweight resource relies on a lightweight provider to take the necessary steps to bring a piece of the system to a desired state.

A lightweight resource is similar to a resource in that it can have :doc:`actions </resource_common_actions>`, :doc:`attributes </resource_common_attributes>`, :doc:`conditions </resource_common_conditionals>`, :doc:`notifications </resource_common_notifications>`, and :doc:`relative paths </resource_common_relative_paths>`. A lightweight resource (and any associated lightweight provider) has its own :doc:`file location </essentials_cookbook_lwrp_file_locations>`, which is a sub-directory within a cookbook. In addition, a lightweight resource can be run during the :doc:`resource compilation </lwrp_common_inline_compile>` phase.  

There are many lightweight resources that are found in cookbooks maintained by |opscode|:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Cookbook
     - Description
   * - :doc:`apt </lwrp_apt>`
     - |cookbook name apt|
   * - :doc:`aws </lwrp_aws>`
     - |cookbook name aws|
   * - :doc:`bluepill </lwrp_bluepill>`
     - |cookbook name bluepill|
   * - :doc:`chef_handler </lwrp_chef_handler>`
     - |cookbook name chef_handler|
   * - :doc:`daemontools </lwrp_daemontools>`
     - |cookbook name daemontools|
   * - :doc:`djbdns </lwrp_djbdns>`
     - |cookbook name djbdns|
   * - :doc:`dmg </lwrp_dmg>`
     - |cookbook name dmg|
   * - :doc:`dynect </lwrp_dynect>`
     - |cookbook name dynect|
   * - :doc:`firewall </lwrp_firewall>`
     - |cookbook name firewall|
   * - :doc:`freebsd </lwrp_freebsd>`
     - |cookbook name freebsd|
   * - :doc:`gunicorn </lwrp_gunicorn>`
     - |cookbook name gunicorn|
   * - :doc:`homebrew </lwrp_homebrew>`
     - |cookbook name homebrew|
   * - :doc:`iis </lwrp_iis>`
     - |cookbook name iis|
   * - :doc:`maven </lwrp_maven>`
     - |cookbook name maven|
   * - :doc:`mysql </lwrp_mysql>`
     - |cookbook name mysql|
   * - :doc:`nagios </lwrp_nagios>`
     - |cookbook name nagios|
   * - :doc:`pacman </lwrp_pacman>`
     - |cookbook name pacman|
   * - :doc:`php </lwrp_php>`
     - |cookbook name php|
   * - :doc:`powershell </lwrp_powershell>`
     - |cookbook name powershell|
   * - :doc:`python </lwrp_python>`
     - |cookbook name python|
   * - :doc:`rabbitmq </lwrp_rabbitmq>`
     - |cookbook name rabbitmq|
   * - :doc:`riak </lwrp_riak>`
     - |cookbook name riak|
   * - :doc:`samba </lwrp_samba>`
     - |cookbook name samba|
   * - :doc:`sudo </lwrp_sudo>`
     - |cookbook name sudo|
   * - :doc:`supervisor </lwrp_supervisor>`
     - |cookbook name supervisor|
   * - :doc:`transmission </lwrp_transmission>`
     - |cookbook name transmission|
   * - :doc:`users </lwrp_users>`
     - |cookbook name users|
   * - :doc:`webpi </lwrp_webpi>`
     - |cookbook name webpi|
   * - :doc:`windows </lwrp_windows>`
     - |cookbook name windows|
   * - :doc:`yum </lwrp_yum>`
     - |cookbook name yum|
   * - :doc:`zenoss </lwrp_zenoss>`
     - |cookbook name zenoss|

.. toctree::
   :hidden:

   lwrp_common_inline_compile

   lwrp_apt
   lwrp_aws
   lwrp_bluepill
   lwrp_chef_handler
   lwrp_daemontools
   lwrp_djbdns
   lwrp_dmg
   lwrp_dynect
   lwrp_firewall
   lwrp_freebsd
   lwrp_gunicorn
   lwrp_homebrew
   lwrp_iis
   lwrp_maven
   lwrp_mysql
   lwrp_nagios
   lwrp_pacman
   lwrp_php
   lwrp_powershell
   lwrp_python
   lwrp_rabbitmq
   lwrp_riak
   lwrp_samba
   lwrp_sudo
   lwrp_supervisor
   lwrp_transmission
   lwrp_users
   lwrp_webpi
   lwrp_windows
   lwrp_yum
   lwrp_zenoss






