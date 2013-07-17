.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``command``
     - |command_or_path|

       Some examples:

       .. code-block:: ruby

          command if [ -x /usr/share/mdadm/checkarray ] && [ $(date +\%d) -le 7 ];
          then /usr/share/mdadm/checkarray --cron --all --idle --quiet; fi

       and:

       .. code-block:: ruby

          command %Q{
            cd /srv/opscode-community-site/current &&
            env RUBYLIB="/srv/opscode-community-site/current/lib"
            RAILS_ASSET_ID=`git rev-parse HEAD` RAILS_ENV="#{rails_env}"
            bundle exec rake cookbooks_report
          }

       and:

       .. code-block:: ruby

          command "/srv/app/scripts/daily_report"
   * - ``day``
     - |day cron| Default value: ``*``.
   * - ``home``
     - |environment set_home|
   * - ``hour``
     - |hour cron| Default value: ``*``.
   * - ``mailto``
     - |environment set_mailto|
   * - ``minute``
     - |minute cron| Default value: ``*``.
   * - ``month``
     - |month cron| Default value: ``*``.
   * - ``path``
     - |environment set_path|
   * - ``provider``
     - Optional. |provider resource_attribute|
   * - ``shell``
     - |environment set_shell|
   * - ``user``
     - |name user cron| Default value: ``root``.
   * - ``weekday``
     - |weekday cron| Default value: ``*``.
