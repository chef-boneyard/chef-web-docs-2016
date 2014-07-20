=====================================================
Prerequisites
=====================================================

.. warning:: This documentation is about |chef private|, an older version of the |chef server|. For documentation about the current version of the |chef server|, see http://docs.opscode.com/server/.

The following prerequisites apply to every installation of |chef private|.

Download |chef private| 1.x.x
=====================================================
.. warning:: |chef private| has been replaced by |chef server oec|. The instructions on this page describe how to install |chef private| for historical purposes. To install |chef server oec|, visit http://pages.getchef.com/ChooseYourVersion.html and http://docs.opscode.com/enterprise/#install-chef-server-oec.

|chef private| is distributed on |redhat| and |centos| using |rpm|, and on |ubuntu| as a deb.

Supported Platforms
=====================================================
|chef private| is supported on the following operating systems:

* |redhat enterprise linux| 6.2 or newer
* |centos| 6.2 or newer
* |ubuntu| 10.04

|chef private| requires an x86_64 compatible systems architecture. When installing on |redhat enterprise linux| or |centos| please note that we recommend you run 'yum update' prior to the installation of |chef private| as you may encounter issues due to out of date dependencies |chef private| requires. 

Configuring the Platform
=====================================================
Before installing |chef private|, ensure that each system has the following installed and configured:

Hostnames, FQDNs
-----------------------------------------------------
The hostname for the |chef server| may be specified using a |fqdn| or an IP address. This hostname must be resolvable. For example, a |chef server| running in a production environment with a resolvable |fqdn| hostname can be added the |dns| system. But when deploying |chef server| into a testing environment, adding the hostname to the ``/etc/hosts`` file is enough to ensure that hostname is resolvable.

* **FQDN Hostnames** When the hostname for the |chef server| is a |fqdn| be sure to include the domain suffix. For example, something like ``mychefserver.example.com`` (and not something like ``mychefserver``).
* **IP Address Hostnames** When the |chef server| is run in IPv6 mode, a hostname specified using an IP address must also be bracketed (``[ ]``) or the |chef server| will not be able to recognize it as an IPv6 address. For example:

   .. code-block:: ruby
   
      bookshelf['url'] "https://[2001:db8:85a3:8d3:1319:8a2e:370:7348]"

The ``api_fqdn`` setting can be added to the |enterprise rb| file (it is not there by default). When added, its value should be equal to the |fqdn| or IP address for the service URI used by the |chef server|. Then configure the same value for the ``bookshelf['vip']`` setting prior to installing |chef server oec|. For example: ``api_fqdn "chef.example.com"`` or ``api_fqdn 123.45.67.890``.

.. warning:: The |fqdn| for the |chef private| server should not exceed 64 characters when using |open ssl|. |open ssl| requires the ``CN`` in a certificate to be no longer than 64 characters. By default, |chef private| uses the |fqdn| of the server to determine the common name (``CN``). If the |fqdn| of the |chef private| server is longer than 64 characters, the ``private-chef-ctl reconfigure`` command will not fail, but an empty certificate file will be created. |nginx| will not start if a certificate file is empty.

**To verify if a hostname is a FQDN**

To verify if a hostname is a |fqdn|, run the following command:

.. code-block:: bash

   $ hostname

If the hostname is a |fqdn|, it will return something like:

.. code-block:: bash

   $ mychefserver.example.com

If the hostname is not a |fqdn|, it must be configured so that it is one.

**To verify is a hostname is resolvable**

To verify is a hostname is resolvable, run the following command:

.. code-block:: bash

   $ hostname -f

If the hostname is resolvable, it will return something like:

.. code-block:: bash

   $ mychefserver.example.com

**To change a hostname**

In some cases, the hostname for the |chef server| needs to be updated. The process for updating a hostname varies, depending on the platform on which the |chef server| will run. Refer to the manual for the platform or contact a local systems administrator for specific guidance for a specific platform. The following example shows how a hostname can be changed when running |redhat| or |centos|:

.. code-block:: bash

   $ sudo hostname 'mychefserver.example.com'

and then:

.. code-block:: bash

   $ echo "mychefserver.example.com" | sudo tee /etc/hostname

**To add a hostname to /etc/hosts**

If a hostname is not resolvable, refer to a local systems administrator for specific guidance on how to add the hostname to the |dns| system. If the |chef server| is being into a testing environment, just add the hostname to ``/etc/hosts``. The following example shows how a hostname can be added to ``/etc/hosts`` when running |redhat| or |centos|:

.. code-block:: bash

   $ echo -e "127.0.0.2 `hostname` `hostname -s`" | sudo tee -a /etc/hosts

NTP
-----------------------------------------------------
|chef private| requires that the systems on which it is running be connected to |ntp|, as |chef private| is particularly sensitive to clock drift. For |redhat| and |centos| 6:

.. code-block:: bash

   $ yum install ntp
   $ chkconfig ntpd on
   $ service ntpd start

For |ubuntu|:

.. code-block:: bash

   $ apt-get install ntp

Mail Relay
-----------------------------------------------------
The |chef private| system utilizes email to send notifications for various events (such as cluster fail-over, or failed periodic jobs.) We recommend you follow your operating system's guidelines and individual corporate policy for installation and configuration of a local mail transfer agent.

|cron|
-----------------------------------------------------
Periodic maintenance tasks are performed on |chef private| servers via |cron| and the ``/etc/cron.d`` directory. On |centos| 6 minimal installations, |cron| may not be installed and configured.

To install |crontab| on |centos| 6, run the following command:

.. code-block:: bash

   $ yum install crontabs

|git|
-----------------------------------------------------
|chef private| requires that |git| be installed so that various internal services can confirm their own revision. For |redhat| and |centos| 6:

.. code-block:: bash

   $ yum install git

For |ubuntu|:

.. code-block:: bash

   $ apt-get install git-core

|redhat| and |centos|
-----------------------------------------------------
|chef private| requires ``libfreetype`` and ``libpng``, which may not be present in a minimal installation. To install ``freetype`` and ``libpng`` on |redhat| and |centos| 6:

.. code-block:: bash

   $ yum install freetype libpng

|apache qpid|
-----------------------------------------------------
On |centos| and |redhat| systems, the |apache qpid| daemon is installed by default. In order to run |chef private|, this daemon must be disabled, as |chef private| uses |rabbitmq| for messaging (and they share the same protocol).

To determine if it is installed:

.. code-block:: bash

   $ rpm -qa | grep qpid
   qpid-cpp-server-0.12-6.el6.x86_64

If you see a response like the above, you have the |apache qpid| server installed. To disable it:

.. code-block:: bash

   $ service qpidd stop
   $ chkconfig --del qpidd

Required Users
=====================================================
If the environment has restrictions on the creation of local user and group accounts (via the ``adduser`` command), you will need to ensure that the correct users exist.

