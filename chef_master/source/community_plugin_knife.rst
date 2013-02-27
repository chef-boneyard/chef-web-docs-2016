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
     - Adds the ability to see how many (and which) nodes have a cookbook in its run list. Learn more: https://github.com/jbz/knife-audit.
   * - knife-baremetalcloud
     - Adds the ability to manage compute nodes in |baremetalcloud|. Learn more: https://github.com/baremetalcloud/knife-baremetalcloud.
   * - knife-batch
     - Adds the ability to execute commands like ``knife ssh``, but in groups of N with a sleep between execution iterations. Learn more: https://github.com/imeyer/knife-batch.
   * - knife-block
     - Adds the ability to create and manage multiple |knife rb| files for working with many servers. Learn more: https://github.com/greenandsecure/knife-block.
   * - knife-brightbox
     - Adds the ability to create, bootstrap, and manage instances in the |brightbox| cloud. Learn more: https://github.com/rubiojr/knife-brightbox.
   * - knife-bulk-change-environment
     - Adds the ability to move nodes from one environment to another. Learn more: https://github.com/jonlives/knife-bulkchangeenvironment.
   * - knife-canon
     - Adds the ability to compare command output across hosts. Learn more: https://github.com/lnxchk/Canon.
   * - knife-cfn
     - Adds the ability to validate, create, describe, and delete stacks in |amazon aws cloudformation|. Learn more: https://github.com/neillturner/knife-cfn.
   * - knife-cleanup
     - Adds the ability to remove unused versions of cookbooks that are hosted on the |chef server|. (Cookbook versions that are removed are backed-up prior to deletion.) Learn more: https://github.com/mdxp/knife-cleanup
   * - knife-cloudstack-fog
     - Adds the ability to create, bootstrap, and manage instances in |cloudstack|. Learn more: https://github.com/fifthecho/knife-cloudstack-fog.
   * - knife-cloudstack
     - Adds the ability to create, bootstrap, and manage |cloudstack| instances. Learn more: https://github.com/CloudStack-extras/knife-cloudstack.
   * - knife-community
     - Adds the ability to assist with deploying completed cookbooks to the community web site. Learn more: https://github.com/miketheman/knife-community.
   * - knife-crawl
     - Adds the ability to display the roles that are included recursively within a role and (optionally) all of the roles that include it. Learn more: https://github.com/jgoulah/knife-crawl.
   * - knife-ec2-amis-ubuntu
     - Adds the ability to retrieve a list of released |ubuntu| |amazon ami|. Learn more: `<https://rubygems.org/gems/ubuntu_ami>`_.
   * - knife-env-diff
     - Adds the ability to diff the cookbook versions for two (or more) environments. Learn more: https://github.com/jgoulah/knife-env-diff.
   * - knife-esx
     - Adds support for |vmware|. Learn more: https://github.com/rubiojr/knife-esx.
   * - knife-file
     - Adds utilities that help manipulate files in a |chef| repository. Learn more: https://github.com/cparedes/knife-file.
   * - knife-flip
     - Adds improvements to ``knife-set-environment`` with added functionality and failsafes. Learn more: https://github.com/jonlives/knife-flip.
   * - knife-gandi
     - Adds the ability to create, bootstrap, and manage servers on the |gandi| hosting platform. Learn more: `<https://rubygems.org/gems/knife-gandi>`_.
   * - knife-gather
     - Adds the ability to collate multi-line output from parallel ``knife ssh`` outputs into one section per host. Learn more: https://github.com/lnxchk/Gather.
   * - knife-github-cookbooks
     - Adds the ability to create vendor branches automatically from any |github| cookbook. Learn more: https://github.com/websterclay/knife-github-cookbooks.
   * - knife-ipmi
     - Adds simple power control of nodes using |ipmi|. Learn more: https://github.com/Afterglow/knife-ipmi.
   * - knife-kvm
     - Adds |linux| support for |kvm|. Learn more: https://github.com/rubiojr/knife-kvm.
   * - knife-lastrun
     - Adds key metrics from the last |chef| run on a given node. Learn more: https://github.com/jgoulah/knife-lastrun.
   * - knife-ohno
     - Adds the ability to view nodes that haven't checked into the platform for N hours. Learn more: https://github.com/lnxchk/Ohno.
   * - knife-onehai
     - Adds the ability to get the last seen time of a single node. Learn more: https://github.com/lnxchk/Knife-OneHai.
   * - knife-playground
     - Adds miscellaneous tools for |knife|. Learn more: https://github.com/rubiojr/knife-playground.
   * - knife-plugins
     - Adds a set of plugins that help manage data bags. Learn more: https://github.com/danielsdeleo/knife-plugins.
   * - knife-pocket
     - Adds the ability to save a |knife| search query for later use, such as when using ``knife ssh``. Learn more: https://github.com/lnxchk/Pocket.
   * - knife-preflight
     - Adds the ability to check which nodes and roles use a cookbook. This is helpful when making changes to a cookbook. Learn more: https://github.com/jonlives/knife-preflight.
   * - knife-rhn
     - Adds the ability to manage the |redhat| network. Learn more: https://github.com/bflad/knife-rhn.
   * - knife-role-copy
     - Adds the ability to get data from a role, and then set up a new role using that data (as long as the new role doesn't have the same name as an existing role). Learn more: https://github.com/benjaminws/knife_role_copy.
   * - knife-rvc
     - Integrates a subset of |knife| functionality with |ruby rvc|. Learn more: `<https://github.com/dougm/rvc-knife>`_.
   * - knife-santoku
     - Adds the ability to build processes around |chef|. Learn more: https://github.com/knuckolls/knife-santoku.
   * - knife-server
     - Adds the ability to manage a |chef server|, including bootstrapping a |chef server| on |amazon ec2| or a standalone server and backing up and/or restoring node, role, data bag, and environment data. Learn more: https://github.com/fnichol/knife-server.
   * - knife-set-environment
     - Adds the ability to set a node environment. Learn more: https://gist.github.com/961827.
   * - knife-solo
     - Adds support for bootstrapping and running |chef solo|, search, and data bags. Learn more: `<https://rubygems.org/gems/knife-solo>`_.
   * - knife-slapchop
     - Adds the ability create and tag clusters of |amazon ec2| nodes with a multi-threading bootstrap process. Learn more: https://github.com/kryptek/knife-slapchop.
   * - knife-spork
     - Adds a simple environment workflow so that teams can more easily work together on the same cookbooks and environments. Learn more: https://github.com/jonlives/knife-spork.
   * - knife-ssh-cheto
     - Adds extra features to be used with |ssh|. Learn more: https://github.com/demonccc/chef-repo/tree/master/plugins/knife/ssh_cheto.
   * - knife-ucs
     - Adds the ability to provision, list, and manage |cisco ucs| servers. Learn more: https://github.com/velankanisys/knife-ucs.
   * - knife-voxel
     - Adds the ability to provision instances in the |voxel| cloud. Learn more: https://github.com/voxeldotnet/knife-voxel.
   * - knife-xapi
     - Adds support for |xenserver|. Learn more: https://github.com/spheromak/knife-xapi.
