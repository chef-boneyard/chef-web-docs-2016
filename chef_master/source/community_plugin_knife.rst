=====================================================
Community Knife Plugins
=====================================================

.. include:: ../../includes_knife/includes_knife.rst

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Plugin
     - Description
   * - `knife-audit <https://github.com/jbz/knife-audit>`_
     - Adds the ability to see how many (and which) nodes have a cookbook in its run list.
   * - `knife-baremetalcloud <https://github.com/baremetalcloud/knife-baremetalcloud>`_
     - Adds the ability to manage compute nodes in |baremetalcloud|.
   * - `knife-batch <https://github.com/imeyer/knife-batch>`_
     - Adds the ability to execute commands like ``knife ssh``, but in groups of N with a sleep between execution iterations.
   * - `knife-block <https://github.com/greenandsecure/knife-block>`_
     - Adds the ability to create and manage multiple |knife rb| files for working with many servers.
   * - `knife-brightbox <https://github.com/rubiojr/knife-brightbox>`_
     - Adds the ability to create, bootstrap, and manage instances in the |brightbox| cloud.
   * - `knife-bulk-change-environment <https://github.com/jonlives/knife-bulkchangeenvironment>`_
     - Adds the ability to move nodes from one environment to another.
   * - `knife-canon <https://github.com/lnxchk/Canon>`_
     - Adds the ability to compare command output across hosts.
   * - `knife-cfn <https://github.com/neillturner/knife-cfn>`_
     - Adds the ability to validate, create, describe, and delete stacks in |amazon aws cloudformation|.
   * - `knife-cisco_asa <https://github.com/bflad/knife-cisco_asa>`_
     - Adds the ability to manage |cisco asa| devices.
   * - `knife-cleanup <https://github.com/mdxp/knife-cleanup>`_
     - Adds the ability to remove unused versions of cookbooks that are hosted on the |chef server|. (Cookbook versions that are removed are backed-up prior to deletion.)
   * - `knife-cloudstack-fog <https://github.com/fifthecho/knife-cloudstack-fog>`_
     - Adds the ability to create, bootstrap, and manage instances in |cloudstack|.
   * - `knife-cloudstack <https://github.com/CloudStack-extras/knife-cloudstack>`_
     - Adds the ability to create, bootstrap, and manage |cloudstack| instances.
   * - `knife-community <https://github.com/miketheman/knife-community>`_
     - Adds the ability to assist with deploying completed cookbooks to the community web site.
   * - `knife-crawl <https://github.com/jgoulah/knife-crawl>`_
     - Adds the ability to display the roles that are included recursively within a role and (optionally) all of the roles that include it.
   * - `knife-digital_ocean <https://github.com/rmoriz/knife-digital_ocean>`_
     - Adds the ability to create, bootstrap, and manage instances in |digital ocean|.
   * - `knife-ec2-amis-ubuntu <https://rubygems.org/gems/ubuntu_ami>`_
     - Adds the ability to retrieve a list of released |ubuntu| |amazon ami|.
   * - `knife-elb <https://github.com/ranjib/knife-elb>`_
     - Adds the ability to add and remove instances from existing enterprise load balancers, enlist them, and then show them. (This does not add the ability to create or delete enterprise load balancers.)
   * - `knife-env-diff <https://github.com/jgoulah/knife-env-diff>`_
     - Adds the ability to diff the cookbook versions for two (or more) environments.
   * - `knife-esx <https://github.com/rubiojr/knife-esx>`_
     - Adds support for |vmware|.
   * - `knife-file <https://github.com/cparedes/knife-file>`_
     - Adds utilities that help manipulate files in a |chef| repository.
   * - `knife-flip <https://github.com/jonlives/knife-flip>`_
     - Adds improvements to ``knife-set-environment`` with added functionality and failsafes.
   * - `knife-gandi <https://rubygems.org/gems/knife-gandi>`_
     - Adds the ability to create, bootstrap, and manage servers on the |gandi| hosting platform.
   * - `knife-gather <https://github.com/lnxchk/Gather>`_
     - Adds the ability to collate multi-line output from parallel ``knife ssh`` outputs into one section per host.
   * - `knife-github-cookbooks <https://github.com/websterclay/knife-github-cookbooks>`_
     - Adds the ability to create vendor branches automatically from any |github| cookbook.
   * - `knife-glesys <https://github.com/smgt/knife-glesys>`_
     - Adds the ability to create, delete, list, and bootstrap servers on |glesys|.
   * - `knife-ipmi <https://github.com/Afterglow/knife-ipmi>`_
     - Adds simple power control of nodes using |ipmi|.
   * - `knife-kvm <https://github.com/rubiojr/knife-kvm>`_
     - Adds |linux| support for |kvm|.
   * - `knife-lastrun <https://github.com/jgoulah/knife-lastrun>`_
     - Adds key metrics from the last |chef| run on a given node.
   * - `knife-ohno <https://github.com/lnxchk/Ohno>`_
     - Adds the ability to view nodes that haven't checked into the platform for N hours.
   * - `knife-oktawave <https://github.com/marek-siemdaj/knife-oktawave>`_
     - Adds the ability to manage |oktawave cloud instances|.
   * - `knife-onehai <https://github.com/lnxchk/Knife-OneHai>`_
     - Adds the ability to get the last seen time of a single node.
   * - `knife-playground <https://github.com/rubiojr/knife-playground>`_
     - Adds miscellaneous tools for |knife|.
   * - `knife-plugins <https://github.com/danielsdeleo/knife-plugins>`_
     - Adds a set of plugins that help manage data bags.
   * - `knife-pocket <https://github.com/lnxchk/Pocket>`_
     - Adds the ability to save a |knife| search query for later use, such as when using ``knife ssh``.
   * - `knife-preflight <https://github.com/jonlives/knife-preflight>`_
     - Adds the ability to check which nodes and roles use a cookbook. This is helpful when making changes to a cookbook.
   * - `knife-profitbricks <https://github.com/profitbricks/knife-profitbricks>`_
     - Adds the ability to create, bootstrap, and manage instances in the |profitbricks iaas|.
   * - `knife-rhn <https://github.com/bflad/knife-rhn>`_
     - Adds the ability to manage the |redhat| network.
   * - `knife-rightscale <https://github.com/caryp/knife-rightscale>`_
     - Adds the ability to provision servers on clouds managed by the |rightscale| platform.
   * - `knife-role_copy <https://github.com/benjaminws/knife_role_copy>`_
     - Adds the ability to get data from a role, and then set up a new role using that data (as long as the new role doesn't have the same name as an existing role).
   * - `knife-rvc <https://github.com/dougm/rvc-knife>`_
     - Integrates a subset of |knife| functionality with |ruby rvc|.
   * - `knife-santoku <https://github.com/knuckolls/knife-santoku>`_
     - Adds the ability to build processes around |chef|.
   * - `knife-server <https://github.com/fnichol/knife-server>`_
     - Adds the ability to manage a |chef server|, including bootstrapping a |chef server| on |amazon ec2| or a standalone server and backing up and/or restoring node, role, data bag, and environment data.
   * - `knife-set-environment <https://gist.github.com/961827>`_
     - Adds the ability to set a node environment.
   * - `knife-solo <https://rubygems.org/gems/knife-solo>`_
     - Adds support for bootstrapping and running |chef solo|, search, and data bags.
   * - `knife-slapchop <https://github.com/kryptek/knife-slapchop>`_
     - Adds the ability create and tag clusters of |amazon ec2| nodes with a multi-threading bootstrap process.
   * - `knife-spork <https://github.com/jonlives/knife-spork>`_
     - Adds a simple environment workflow so that teams can more easily work together on the same cookbooks and environments.
   * - `knife-ssh_cheto <https://github.com/demonccc/chef-repo/tree/master/plugins/knife/ssh_cheto>`_
     - Adds extra features to be used with |ssh|.
   * - `knife-ucs <https://github.com/velankanisys/knife-ucs>`_
     - Adds the ability to provision, list, and manage |cisco ucs| servers.
   * - `knife-voxel <https://github.com/voxeldotnet/knife-voxel>`_
     - Adds the ability to provision instances in the |voxel| cloud.
   * - `knife-whisk <https://github.com/Banno/knife-whisk>`_
     - Adds the ability to create new servers in a team environment.
   * - `knife-xapi <https://github.com/spheromak/knife-xapi>`_
     - Adds support for |xenserver|.
