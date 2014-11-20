.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Use the following steps to set up the primary backend |chef server|:

#. Download the packages from http://downloads.getchef.com/chef-server/.

   .. code-block:: bash
      
      $ rpm -Uvh /tmp/chef-server-core-<version>.rpm

   For |ubuntu|:

   .. code-block:: bash
      
      $ dpkg -i /tmp/chef-server-core-<version>.deb

   After a few minutes, the |chef server| will be installed.

#. Create a file named |chef server rb| that is located in the ``/etc/opscode/`` directory. See the |chef server rb| section below for an example of the settings and values that are required.

#. Install |drbd|. For |redhat| and |centos| 6.5 and 6.6:

   .. code-block:: bash
      
      $ rpm --import http://elrepo.org/RPM-GPG-KEY-elrepo.org

   then:

   .. code-block:: bash
      
      $ rpm -Uvh http://elrepo.org/elrepo-release-6-5.el6.elrepo.noarch.rpm

   and then **only for |redhat| and |centos| 6.6**:

   .. code-block:: bash
      
      $ yum install -y drbd84-utils kmod-drbd84

   .. note:: The |elrepo| provides updated drivers for the |linux| family of enterprise distributions (based on |redhat enterprise linux|.) With the introduction of |redhat enterprise linux| 6, |redhat| no longer distributes |drbd| within the kernel. These modules provide properly built, community tested releases of the required kernel and |drbd| userland.

   For |redhat| and |centos| 6.x (that is not version 6.6):

   .. code-block:: bash
      
      $ yum install -y drbd84-utils kmod-drbd84-8.4.5-1.el6.elrepo
   
   For |ubuntu|:

   .. code-block:: bash
      
      $ apt-get install drbd8-utils

#. Reconfigure the |chef server|:

   .. code-block:: bash
      
      $ sudo chef-server-ctl reconfigure

   This will configure |drbd|. The installer will pause and ask for confirmation that |drbd| has been set up. Confirm (``CTRL-C``), and then run the following commands:

   .. code-block:: bash
      
      $ drbdadm create-md pc0

   then:

   .. code-block:: bash
      
      $ drbdadm up pc0
