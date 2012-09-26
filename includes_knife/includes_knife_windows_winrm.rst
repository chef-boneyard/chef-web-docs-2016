.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``winrm`` argument is used to create a connection to one or more remote machines. As each connection is created, a password must be provided. This argument uses the same syntax as the ``search`` sub-command.

This argument has the following syntax::

   knife winrm SEARCH_QUERY SSH_COMMAND (options)

This argument has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``-a ATTR``, ``--attribute ATTR``
     - |attribute ssh| The default attribute is the fully-qualified domain name of the host. Other possible values include a public IP address, a private IP address, or a hostname.
   * - ``-f CA_TRUST_FILE``, ``--ca-trust-file CA_TRUST_FILE``
     - |ca-trust-file|
   * - ``-i IDENTITY_FILE``, ``--identity-file IDENTITY_FILE``
     - |identity-file|
   * - ``-i KEYTAB_FILE``, ``--keytab-file KEYTAB_FILE``
     - |keytab-file|
   * - ``-m``, ``--manual-list``
     - |manual-list|
   * - ``-p PORT``, ``--winrm-port PORT``
     - |winrm-port|
   * - ``-P PASSWORD``, ``--winrm-password PASSWORD``
     - |winrm-password|
   * - ``-R KERBEROS_REALM``, ``--kerberos-realm KERBEROS_REALM``
     - |kerberos-realm|
   * - ``--returns CODES``
     - |returns|
   * - ``-S KERBEROS_SERVICE``, ``--kerberos-service KERBEROS_SERVICE``
     - |kerberos-service| 
   * - ``SEARCH_QUERY``
     - |SEARCH_QUERY SSH|
   * - ``SSH_COMMAND``
     - |SSH_COMMAND|
   * - ``-t TRANSPORT``, ``--winrm-transport TRANSPORT``
     - |winrm-transport|
   * - ``-x USERNAME``, ``--winrm-user USERNAME``
     - |winrm-user|

For example, to find the uptime of all web servers, enter:

.. code-block:: bash

   $ knife winrm "role:web" "net stats srv" -x Administrator -P password

Or, to force a |chef| run:

.. code-block:: bash

   knife winrm 'ec2-50-xx-xx-124.amazonaws.com' 'chef-client -c c:/chef/client.rb' -m -x admin -P 'password'
   ec2-50-xx-xx-124.amazonaws.com [date] INFO: Starting Chef Run (Version 0.9.12)
   ec2-50-xx-xx-124.amazonaws.com [date] WARN: Node ip-0A502FFB has an empty run list.
   ec2-50-xx-xx-124.amazonaws.com [date] INFO: Chef Run complete in 4.383966 seconds
   ec2-50-xx-xx-124.amazonaws.com [date] INFO: cleaning the checksum cache
   ec2-50-xx-xx-124.amazonaws.com [date] INFO: Running report handlers
   ec2-50-xx-xx-124.amazonaws.com [date] INFO: Report handlers complete

Where in the examples above, ``[date]`` represents the date and time the long entry was created. For example: ``[Fri, 04 Mar 2011 22:00:53 +0000]``.





