.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A nested key is a key that appears deeper in the JSON data structure. For example, information about a network interface might be several layers deep: ``node[:network][:interfaces][:en1]``. When nested keys are present in a JSON structure, |chef| will extract those nested fields to the top-level, flattening them into compound keys that support wildcards.

By combining wildcards with range matching patterns and wildcard queries, it is possible to perform very powerful searches such as using the vendor part of the MAC address to find every node that has a network card made by the specified vendor.

Consider the following snippet of JSON data::

   {"network":
     [
     //snipped...
       "interfaces",
         {"en1": {
           "number": "1",
           "flags": [
             "UP",
             "BROADCAST",
             "SMART",
             "RUNNING",
             "SIMPLEX",
             "MULTICAST"
           ],
           "addresses": {
             "fe80::fa1e:dfff:fed8:63a2": {
               "scope": "Link",
               "prefixlen": "64",
               "family": "inet6"
             },
             "f8:1e:df:d8:63:a2": {
               "family": "lladdr"
             },
             "192.168.0.195": {
               "netmask": "255.255.255.0",
               "broadcast": "192.168.0.255",
               "family": "inet"
             }
           },
           "mtu": "1500",
           "media": {
             "supported": {
               "autoselect": {
                 "options": [ 
   
                 ]
               }
             },
             "selected": {
               "autoselect": {
                 "options": [
   
                 ]
               }
             }
           },
           "type": "en",
           "status": "active",
           "encapsulation": "Ethernet"
         },
     //snipped...  

Before this data is indexed on the |chef server|, the nested fields are extracted into the top level, similar to::

   "broadcast" => "192.168.0.255",
   "flags"     => ["UP", "BROADCAST", "SMART", "RUNNING", "SIMPLEX", "MULTICAST"]
   "mtu"       => "1500"

This allows searches like the following to find data that is present in this node::

   knife search node "broadcast:192.168.0.*"

Or::

   knife search node "mtu:1500"

Or::

   knife search node "flags:UP"

This data is also flattened into various compound keys, which follow the same pattern as the JSON hierarchy and use underscores ("_") to separate the levels of data, similar to::

     # ...snip...
     "network_interfaces_en1_addresses_192.168.0.195_broadcast" => "192.168.0.255",
     "network_interfaces_en1_addresses_fe80::fa1e:tldr_family"  => "inet6",
     "network_interfaces_en1_addresses"                         => ["fe80::fa1e:tldr","f8:1e:df:tldr","192.168.0.195"]
     # ...snip...

This allows searches like the following to find data that is present in this node::

   knife search node "network_interfaces_en1_addresses:192.168.0.195"

This flattened data structure also supports using wildcard compound keys, which allow searches to omit levels within the JSON data structure that are not important to the search query. In the following example, an asterisk ("*") is used to show where the wildcard can exist when searching for nested key::

   "network_interfaces_*_flags"     => ["UP", "BROADCAST", "SMART", "RUNNING", "SIMPLEX", "MULTICAST"]
   "network_interfaces_*_addresses" => ["fe80::fa1e:dfff:fed8:63a2", "192.168.0.195", "f8:1e:df:d8:63:a2"]
   "network_interfaces_en0_media_*" => ["autoselect", "none", "1000baseT", "10baseT/UTP", "100baseTX"]
   "network_interfaces_en1_*"       => ["1", "UP", "BROADCAST", "SMART", "RUNNING", "SIMPLEX", "MULTICAST",
                                        "fe80::fa1e:dfff:fed8:63a2", "f8:1e:df:d8:63:a2", "192.168.0.195",
                                        "1500", "supported", "selected", "en", "active", "Ethernet"]

For each of the wildcard examples above, the possible values are shown contained within the brackets. When running a search query, the query syntax for wildcards is to simply omit the name of the node (while preserving the underscores), like this::

   network_interfaces__flags

This query will search within the ``flags`` node within the JSON structure for each of ``UP``, ``BROADCAST``, ``SMART``, ``RUNNING``, ``SIMPLEX``, and ``MULTICAST``.