.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The syntax for an |ohai| plugin is as follows:

.. code-block:: ruby

   require_plugin "plugin_name"
   provides "attribute", "attribute/subattribute"
   attribute Mash.new

   # Ruby code that defines the Ohai plugin

where 

* ``require_plugin`` is used to extend one (or more) existing |ohai| plugins; an often-used value for ``require_plugin`` is ``"#{os}::hostname"``
* Required. ``provides`` is a comma-separated list of one (or more) attributes that are defined by this plugin. This becomes an automatic attribute (i.e. ``node[:attribute]``) that is collected by |ohai| at the start of every |chef client| run. For example, the syntax example will create an automatic attribute: ``node[:attribute] => "some_value"`` with ``some_value`` being defined by ``Mash.new``. An attribute can also be defined using an ``attribute/subattribute`` pattern
* ``Mash.new`` is used to define the |ohai| plugin

For example, a plugin could be built to add additional ``ipaddrtype_iface`` network attributes to help make it semantically easier to retrieve addresses:

.. code-block:: ruby

   provides "network"
   
   require_plugin "hostname"
   require_plugin "#{os}::network"
   
   network['interfaces'].each do |iface, addrs|
   
   addrs['addresses'].each do |ip, params|
     network["ipaddress_#{iface}"] ||= ip if params['family'].eql?('inet')
     network["ipaddress6_#{iface}"] ||= ip if params['family'].eql?('inet6')
     network["macaddress_#{iface}"] ||= ip if params['family'].eql?('lladdr')
   end
   
   end
   
   network

and then |knife| can be used to show these values. For example:

.. code-block:: bash

   $ knife node show guineapig -a network

to return something similar to:

.. code-block:: bash

   network:
   ...
     ipaddress6_eth0:    fe80::20c:29ff:fe12:7adc
     ipaddress6_lo:      ::1
     ipaddress_eth0:     10.13.37.200
     ipaddress_lo:       127.0.0.1
     macaddress_eth0:    00:0c:29:12:7a:dc

