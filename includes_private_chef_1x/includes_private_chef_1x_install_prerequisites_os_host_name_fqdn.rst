.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Ensure that the systems you are going to install |chef private| on have properly configured host names, and a *resolvable* |fully qualified domain name| (e.g. mychefserver.example.com). 

Depending on your OS, there are a few different ways to change your hostname. Please note that the following are examples and you should refer to the operating systems manual or local systems administrator for guidance.

For |redhat| and |centos| 6:

.. code-block:: bash

	$ sudo hostname 'mychefserver.example.com'
	$ sudo sed -ri 's|^HOSTNAME=.*|HOSTNAME="mychefserver.example.com"|' /etc/sysconfig/network
	
For |ubuntu|:

.. code-block:: bash

	$ sudo hostname 'mychefserver.example.com'
	$ echo "mychefserver.example.com" | sudo tee /etc/hostname

**Note:** If the host name is not resolvable, for example the host name has not been added to DNS, make sure to modify your system's /etc/hosts file before installing |chef private|. You can either add the hostname to your localhost IP (127.0.0.1) or add a new entry for the host's IP address. 

Run the following command to add it to your localhost entry. For |redhat|, |centos| 6, and |ubuntu|:

.. code-block:: bash
	
	$ sudo sed -ri "s|localhost|`hostname -s` `hostname` localhost|" /etc/hosts
	
Run the following command to add an entry for your IP address (this command assumes there is none present!). For |redhat|, |centos| 6, and |ubuntu|:

.. code-block:: bash
	
	$ echo -e "`ip addr list eth0 |grep \"inet \" |cut -d' ' -f6|cut -d/ -f1`\t`hostname -s` `hostname`" | sudo tee -a /etc/hosts

As mentioned before, the commands above are examples on how to make your FQDN properly set and resolvable, however you **should always** refer to the operating systems manual or local systems administrator for guidance.