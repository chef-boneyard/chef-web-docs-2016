.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following cookbooks should be used in conjunction with the |cookbook yum| to manage the default repositories that come with specific platforms:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Cookbook
     - Description
   * - `yum-amazon <https://github.com/opscode-cookbooks/yum-amazon>`_
     - Use the |cookbook yum_amazon| cookbook to manage |amazon linux| repositories: ``amzn-main``, ``amzn-main-debuginfo``, ``amzn-nosrc``, ``amzn-updates``, ``amzn-updates-debuginfo``, ``amzn-preview``, and ``amzn-preview-debuginfo``.
   * - `yum-centos <https://github.com/opscode-cookbooks/yum-centos>`_
     - Use the |cookbook yum_centos| cookbook to manage |centos| repositories: ``base``, ``updates``, ``extras``, ``centosplus``, and ``contrib``.
   * - `yum-elrepo <https://github.com/opscode-cookbooks/yum-elrepo>`_
     - Use the |cookbook yum_elrepo| cookbook to manage |elrepo| repositories: ``elrepo``.
   * - `yum-epel <https://github.com/opscode-cookbooks/yum-epel>`_
     - Use the |cookbook yum_epel| cookbook to manage |fedora| |fedora epel| repositories: ``epel``, ``epel-debuginfo``, ``epel-source``, ``epel-testing``, ``epel-testing-debuginfo``, and ``epel-testing-source``.
   * - `yum-erlang_solutions <https://github.com/opscode-cookbooks/yum-erlang_solutions>`_
     - Use the |cookbook yum_erlang| cookbook to manage |erlang solutions| repositories: ``erlang_solutions``.
   * - `yum-fedora <https://github.com/opscode-cookbooks/yum-fedora>`_
     - Use the |cookbook yum_fedora| cookbook to manage |fedora| repositories: ``fedora``, ``fedora-debuginfo``, ``fedora-source``, ``updates``, ``updates-debuginfo``, ``updates-source``, ``updates-testing``, ``updates-testing-debuginfo``, and ``updates-testing-source``.
   * - `yum-ius <https://github.com/opscode-cookbooks/yum-ius>`_
     - Use the |cookbook yum_ius| cookbook to manage |redhat ius| repositories:  ``ius``, ``ius-debuginfo``, ``ius-source``, ``ius-archive``, ``ius-archive-debuginfo``, ``ius-archive-source``, ``ius-testing``, ``ius-testing-debuginfo``, ``ius-testing-source``, ``ius-dev``, ``ius-dev-debuginfo``, ``ius-dev-source``.
   * - `yum-percona <https://github.com/opscode-cookbooks/yum-percona>`_
     - Use the |cookbook yum_percona| cookbook to manage |percona| repositories: ``percona``.
   * - `yum-pgdg <https://github.com/opscode-cookbooks/yum-pgdg>`_
     - Use the |cookbook yum_pgdg| cookbook to manage |postgresql| repositories: ``base``, ``updates``, ``extras``, ``centosplus``, and ``contrib``.
   * - `yum-repoforge <https://github.com/opscode-cookbooks/yum-repoforge>`_
     - Use the |cookbook yum_repoforge| cookbook to manage |repoforge| repositories: ``rpmforge``, ``rpmforge-extras``, and ``rpmforge-testing``.

