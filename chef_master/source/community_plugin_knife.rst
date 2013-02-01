=====================================================
Knife Plugins
=====================================================

.. include:: ../../includes_knife/includes_knife.rst

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Plugin
     - Description
   * - knife-audit
     - Adds the ability to see how many (and which) nodes have a cookbook in its run list. Download this plugin: https://github.com/jbz/knife-audit.
   * - knife-baremetalcloud
     - Adds the ability to manage compute nodes in |baremetalcloud|. Download this plugin: https://github.com/baremetalcloud/knife-baremetalcloud.
   * - knife-batch
     - Adds the ability to execute commands like ``knife ssh``, but in groups of N with a sleep between execution iterations. Download this plugin: https://github.com/imeyer/knife-batch.
   * - knife-block
     - Adds the ability to create and manage multiple |knife rb| files for working with many servers. Download this plugin: https://github.com/greenandsecure/knife-block.
   * - knife-brightbox
     - Adds the ability to create, bootstrap, and manage instances in the |brightbox| cloud. Download this plugin: https://github.com/rubiojr/knife-brightbox.
   * - knife-bulk-change-environment
     - Adds the ability to move nodes from one environment to another. Download this plugin: https://github.com/jonlives/knife-bulkchangeenvironment.
   * - knife-canon
     - Adds the ability to compare command output across hosts. Download this plugin: https://github.com/lnxchk/Canon.
   * - knife-cfn
     - Adds the ability to validate, create, describe, and delete stacks in |amazon aws cloudformation|. Download this plugin: https://github.com/neillturner/knife-cfn.
   * - knife-cloudstack-fog
     - Adds the ability to create, bootstrap, and manage instances in |cloudstack|. Download this plugin: https://github.com/fifthecho/knife-cloudstack-fog.
   * - knife-cloudstack
     - Adds the ability to create, bootstrap, and manage |cloudstack| instances. Download this plugin: https://github.com/CloudStack-extras/knife-cloudstack.
   * - knife-community
     - Adds the ability to assist with deploying completed cookbooks to the community web site. Download this plugin: https://github.com/miketheman/knife-community.
   * - knife-crawl
     - Adds the ability to display the roles that are included recursively within a role and (optionally) all of the roles that include it. Download this plugin: https://github.com/jgoulah/knife-crawl.
   * - knife-ec2-amis-ubuntu
     - Adds the ability to retrieve a list of released |ubuntu| |amazon ami|. Download this plugin: `<xxxxx>`_.
   * - knife-env-diff
     - Adds the ability to diff the cookbook versions for two (or more) environments. Download this plugin: https://github.com/jgoulah/knife-env-diff.
   * - knife-esx
     - Adds support for |vmware|. Download this plugin: https://github.com/rubiojr/knife-esx.
   * - knife-file
     - Adds utilities that help manipulate files in a |chef| repository. Download this plugin: https://github.com/cparedes/knife-file.
   * - knife-flip
     - Adds improvements to ``knife-set-environment`` with added functionality and failsafes. Download this plugin: https://github.com/jonlives/knife-flip.
   * - knife-gandi
     - Adds the ability to create, bootstrap, and manage servers on the |gandi| hosting platform. Download this plugin: `<xxxxx>`_.
   * - knife-gather
     - Adds the ability to collate multi-line output from parallel ``knife ssh`` outputs into one section per host. Download this plugin: https://github.com/lnxchk/Gather.
   * - knife-github-cookbooks
     - Adds the ability to create vendor branches automatically from any |github| cookbook. Download this plugin: https://github.com/websterclay/knife-github-cookbooks.
   * - knife-ipmi
     - Adds simple power control of nodes using |ipmi|. Download this plugin: https://github.com/Afterglow/knife-ipmi.
   * - knife-kvm
     - Adds |linux| support for |kvm|. Download this plugin: https://github.com/rubiojr/knife-kvm.
   * - knife-lastrun
     - Adds key metrics from the last |chef| run on a given node. Download this plugin: https://github.com/jgoulah/knife-lastrun.
   * - knife-ohno
     - Adds the ability to view nodes that haven't checked into the platform for N hours. Download this plugin: https://github.com/lnxchk/Ohno.
   * - knife-onehai
     - Adds the ability to get the last seen time of a single node. Download this plugin: https://github.com/lnxchk/Knife-OneHai.
   * - knife-playground
     - Adds miscellaneous tools for |knife|. Download this plugin: https://github.com/rubiojr/knife-playground.
   * - knife-plugins
     - Adds a set of plugins that help manage data bags. Download this plugin: https://github.com/danielsdeleo/knife-plugins.
   * - knife-pocket
     - Adds the ability to save a |knife| search query for later use, such as when using ``knife ssh``. Download this plugin: https://github.com/lnxchk/Pocket.
   * - knife-preflight
     - Adds the ability to check which nodes and roles use a cookbook. This is helpful when making changes to a cookbook. Download this plugin: https://github.com/jonlives/knife-preflight.
   * - knife-rhn
     - Adds the ability to manage the |redhat| network. Download this plugin: https://github.com/bflad/knife-rhn.
   * - knife-role-copy
     - Adds the ability to get data from a role, and then set up a new role using that data (as long as the new role doesn't have the same name as an existing role). Download this plugin: https://github.com/benjaminws/knife_role_copy.
   * - knife-rvc
     - Integrates a subset of |knife| functionality with |ruby rvc|. Download this plugin: `<xxxxx>`_.
   * - knife-santoku
     - Adds the ability to build processes around |chef|. Download this plugin: https://github.com/knuckolls/knife-santoku.
   * - knife-server
     - Adds the ability to manage a |chef server|, including bootstrapping a |chef server| on |amazon ec2| or a standalone server and backing up and/or restoring node, role, data bag, and environment data. Download this plugin: https://github.com/fnichol/knife-server.
   * - knife-set-environment
     - Adds the ability to set a node environment. Download this plugin: https://gist.github.com/961827.
   * - knife-solo
     - Adds support for bootstrapping and running |chef solo|, search, and data bags. Download this plugin: `<xxxxx>`_.
   * - knife-slapchop
     - Adds the ability create and tag clusters of |amazon ec2| nodes with a multi-threading bootstrap process. Download this plugin: https://github.com/kryptek/knife-slapchop.
   * - knife-spork
     - Adds a simple environment workflow so that teams can more easily work together on the same cookbooks and environments. Download this plugin: https://github.com/jonlives/knife-spork.
   * - knife-ssh-cheto
     - Adds extra features to be used with |ssh|. Download this plugin: https://github.com/demonccc/chef-repo/tree/master/plugins/knife/ssh_cheto.
   * - knife-ucs
     - Adds the ability to provision, list, and manage |cisco ucs| servers. Download this plugin: https://github.com/velankanisys/knife-ucs.
   * - knife-voxel
     - Adds the ability to provision instances in the |voxel| cloud. Download this plugin: https://github.com/voxeldotnet/knife-voxel.
   * - knife-xapi
     - Adds support for |xenserver|. Download this plugin: https://github.com/spheromak/knife-xapi.
