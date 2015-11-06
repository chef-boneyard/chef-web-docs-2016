.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Your workstation is expected to be a separate machine, or instance, from your provisioning node. However, if you are using your workstation as your provisioning node, then these configurations will already be present, except for the delivery CLI. You will need to install and configure that in the directory in which you will create projects, and make and submit changes. We recommend creating a "working" directory for each Organization that you intend to create, and, for each such directory, you will need to install and configure the delivery CLI, and install the delivery-cluster.

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


