.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``command``
     - |command resource cron|

       Some examples:

       .. code-block:: ruby

          if [ -x /usr/share/mdadm/checkarray ] && [ $(date +\%d) -le 7 ];
          then /usr/share/mdadm/checkarray --cron --all --idle --quiet; fi

       and:

       .. code-block:: ruby

          command %Q{
            cd /srv/opscode-community-site/current &&
            env RUBYLIB="/srv/opscode-community-site/current/lib"
            RAILS_ASSET_ID=`git rev-parse HEAD` RAILS_ENV="#{rails_env}"
            bundle exec rake cookbooks_report
          }

   * - ``day``
     - |day resource cron|
   * - ``home``
     - |home resource cron|
   * - ``hour``
     - |hour resource cron|
   * - ``mailto``
     - |mailto resource cron|
   * - ``minute``
     - |minute resource cron|
   * - ``month``
     - |month resource cron|
   * - ``path``
     - |path resource cron|
   * - ``shell``
     - |shell resource cron|
   * - ``user``
     - |user resource cron|
   * - ``weekday``
     - |weekday resource cron|
