.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``command``
     - **Ruby Type:** String

       |command_or_path|

       Some examples:

       .. code-block:: ruby

          command if [ -x /usr/share/mdadm/checkarray ] && [ $(date +\%d) -le 7 ];
          then /usr/share/mdadm/checkarray --cron --all --idle --quiet; fi

       and:

       .. code-block:: ruby

          command %w{
            cd /srv/opscode-community-site/current &&
            env RUBYLIB="/srv/opscode-community-site/current/lib"
            RAILS_ASSET_ID=`git rev-parse HEAD` RAILS_ENV="#{rails_env}"
            bundle exec rake cookbooks_report
          }.join(' ')

       and:

       .. code-block:: ruby

          command "/srv/app/scripts/daily_report"
   * - ``day``
     - **Ruby Type:** String

       |day cron| Default value: ``*``.
   * - ``environment``
     - **Ruby Type:** Hash

       |environment variables|
   * - ``home``
     - **Ruby Type:** String

       |environment set_home|
   * - ``hour``
     - **Ruby Type:** String

       |hour cron| Default value: ``*``.
   * - ``mailto``
     - **Ruby Type:** String

       |environment set_mailto|
   * - ``minute``
     - **Ruby Type:** String

       |minute cron| Default value: ``*``.
   * - ``month``
     - **Ruby Type:** String

       |month cron| Default value: ``*``.
   * - ``notifies``
     - **Ruby Type:** Symbol, 'Chef::Resource[String]', Symbol

       |notifies|

       .. include:: ../../includes_resources_common/includes_resources_common_notifications_syntax_notifies.rst

       .. include:: ../../includes_resources_common/includes_resources_common_notifications_timers.rst
   * - ``path``
     - **Ruby Type:** String

       |environment set_path|
   * - ``provider``
     - **Ruby Type:** Chef Class

       Optional. |provider resource_parameter|
   * - ``shell``
     - **Ruby Type:** String

       |environment set_shell|
   * - ``subscribes``
     - **Ruby Type:** Symbol, 'Chef::Resource[String]', Symbol

       |subscribes|

       .. include:: ../../includes_resources_common/includes_resources_common_notifications_syntax_subscribes.rst

       |subscribes timers|
   * - ``time``
     - **Ruby Type:** Symbol

       |time cron|
   * - ``user``
     - **Ruby Type:** String

       This attribute is not applicable on the |ibm aix| platform. |name user cron| Default value: ``root``.
   * - ``weekday``
     - **Ruby Types:** String, Symbol

       |weekday cron| Default value: ``*``. May be entered as a symbol, e.g. ``:monday`` or ``:friday``.
