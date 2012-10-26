.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

An automatic attribute is a specific detail about a node, such as an IP address, a host name, a list of loaded kernel modules, the version(s) of available programming languages that are available, and so on. Automatic attributes are detected by |ohai| and are then used by |chef| to ensure that these attribute are handled properly during every |chef| run. The most commonly accessed automatic attributes are:


.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Attribute
     - Description
   * - ``node['platform']``
     - The platform on which a node is running. This attribute helps determine which providers will be used.
   * - ``node['platform_version']``
     - The version of the platform. This attribute helps determine which providers will be used.
   * - ``node['ipaddress']``
     - The IP address for a node. If the node has a default route, this is the IPV4 address for the interface. If the node does not have a default route, the value for this attribute should be ``nil``. The IP address for default route is the recommended default value.
   * - ``node['macaddress']``
     - The |mac address| for a node, determined by the same interface that detects the ``node['ipaddress']``.
   * - ``node['fqdn']``
     - The fully qualified domain name for a node. This is used as the name of a node unless otherwise set.
   * - ``node['hostname']``
     - The host name for the node.
   * - ``node['domain']``
     - The domain for the node.
   * - ``node['recipes']``
     - A list of recipes associated with a node (and part of that node's run-list).
   * - ``node['roles']``
     - A list of roles associated with a node (and part of that node's run-list).
   * - ``node['ohai_time']``
     - The time at which |ohai| was last run. This attribute is not commonly used in recipes, but it is saved to the |chef server| and can be accessed using the ``knife status`` sub-command.