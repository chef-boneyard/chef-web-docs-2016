.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The hostnames of your private chef servers need to meet several requirements for private chef to operate properly.

You must ensure that your hostname is a |fully qualified domain name| (FQDN).  This means that your hostname must have a domain suffix.  In other words, it should look like 'mychefserver.example.com' rather than only 'mychefserver'.

The hostname must also be |resolvable|.  Typically this is done by putting the server into your DNS system by a DNS administrator or service.  If this is a test server, you can make a hostname resolve via using the /etc/hosts file.

To check if your hostname is a FQDN simply run the hostname command and see what form it takes:

.. code-block:: bash

	$ hostname 
	mychefserver.example.com

If your hostname lacks a domain name you should set the hostname of your server to include it.  As a best practice you should set this on all your servers correctly with chef-client later.

Depending on your OS, there are a few different ways to change your hostname. Please note that the following are examples and you should refer to the operating systems manual or local systems administrator for guidance.

For |redhat|, |centos| and other derived distributions:

.. code-block:: bash

	$ sudo hostname 'mychefserver.example.com'
	$ sudo sed -ri 's|^HOSTNAME=.*|HOSTNAME="mychefserver.example.com"|' /etc/sysconfig/network
	
For |ubuntu|:

.. code-block:: bash

	$ sudo hostname 'mychefserver.example.com'
	$ echo "mychefserver.example.com" | sudo tee /etc/hostname

In order to check if your host name is |resolvable|, run hostname with the -f argument:

.. code-block:: bash

	$ hostname -f
	mychefserver.example.com

The output should match what you had before, should not have any errors and should be fully-qualified.  If you are setting up a production server, please ask your DNS admins to add your server to DNS.

If your hostname is not resolvable, you can run the following command to add it to your localhost entry. For |redhat|, |centos|, and |ubuntu|:

.. code-block:: bash
	
	$ echo -e "127.0.0.2 `hostname` `hostname -s`" | sudo tee -a /etc/hosts

Note that this is only intended to quickly get you started for a test server which is not intended for production use.  Please consult with local system admins for your best practices about making servers resolvable in DNS.
