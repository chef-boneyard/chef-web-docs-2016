.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

.. note:: Workstations typically are separate machines, or instances, from the |chef delivery| provisioning node. However, if you are using your workstation as your provisioning node, then the configurations in this section are already present, except for the delivery CLI. You must install and configure that in the directory in which you will create projects. We recommend creating a `working` directory for each Organization that you intend to create, and, for each such directory, install and configure the delivery CLI.

Setting up a workstation requires the following:

#. Install a development environment:

   * Debian based (apt): ``apt-get install build-essential``
   * RHEL based (yum): ``yum groupinstall "Development Tools"``
   * OS X: ``xcode-select --install``

#. Install |git|: http://git-scm.com/book/en/v2/Getting-Started-Installing-Git.
#. Install the |chef dk|: https://downloads.chef.io/chef-dk/. Be sure to follow all instructions; for example, to run delivery commands you must set the following:  
   
   ``echo 'eval "$(chef shell-init bash)"' >> ~/.bash_profile``

#. Install ``knife push``: ``chef gem install knife-push``.
#. Install and configure the |chef delivery| CLI, described in the following sections.


