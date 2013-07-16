.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following handlers are available from the open source community:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Handler
     - Description
   * - |airbrake|
     - A handler that sends exceptions (only) to |airbrake|, an application that collects data and aggregates it for review. `Download Airbrake <https://github.com/morgoth/airbrake_handler>`_.
   * - Asynchronous Resources
     - A handler that asynchronously pushes exception and report handler data to a |stomp| queue, from which data can be processed into data storage. `Download Asynchronous Resources <https://github.com/rottenbytes/chef/tree/master/async_handler>`_.
   * - |campfire|
     - A handler that collects exception and report handler data and reports it to |campfire|, a web-based group chat tool. `Download Campfire <https://github.com/ampledata/chef-handler-campfire>`_.
   * - |cloudkick|
     - A handler that collects exception and report handler data and sends it to |cloudkick|, a set of cloud server monitoring and management tools. `Download Cloudkick <https://github.com/ampledata/chef/blob/master/chef/lib/chef/handler/cloudkick_handler.rb>`_.
   * - |datadog|
     - A handler that collects |chef| stats and sends them into a |datadog| newsfeed. `Download Datadog <https://github.com/DataDog/chef-handler-datadog>`_.
   * - |flowdock|
     - A handler that collects exception and report handler data and sends it to users via the |flowdock| API. `Download Flowdock <https://github.com/mmarschall/chef-handler-flowdock>`_.
   * - |graphite|
     - A handler that collects exception and report handler data and reports it to |graphite|, a graphic rendering application. `Download Graphite <https://github.com/imeyer/chef-handler-graphite/wiki>`_.
   * - |graylog| / |graylog gelf|
     - A handler that provides exception and report handler status (including changes) to a |graylog| server, so that the data can be viewed using |graylog gelf|. `Download GELF <https://github.com/jellybob/chef-gelf/>`_.
   * - |growl|
     - A handler that collects exception and report handler data and then sends it as a |growl| notification. `Download Growl <http://rubygems.org/gems/chef-handler-growl>`_.
   * - |hipchat|
     - A handler that collects exception handler data and sends it to |hipchat|, a hosted private chat service for companies and teams. `Download HipChat <https://github.com/mojotech/hipchat/blob/master/lib/hipchat/chef.rb>`_.
   * - |irc snitch|
     - A handler that notifies administrators (via |irc|) when a |chef| run fails. `Download IRC Snitch <https://rubygems.org/gems/chef-irc-snitch>`_.
   * - |nagios nsca|
     - A handler that supports |nagios nsca|, an add-on for |nagios|. This will allow |chef| report and exception handler messages to be passed to |nagios| from |nagios nsca|. `Download NSCA <https://github.com/ranjibd/nsca_handler>`_.
   * - Simple Email
     - A handler that collects exception and report handler data and then uses |pony| to send email reports that are based on |erubis| templates. `Download Simple Email <https://rubygems.org/gems/chef-handler-mail>`_.
   * - |sns|
     - A handler that notifies exception and report handler data and sends it to a |sns| topic. `Download SNS <https://rubygems.org/gems/chef-handler-sns>`_.
   * - |splunk storm|
     - A handler that supports exceptions and reports for |splunk storm|. `Download Splunk Storm <http://ampledata.org/splunk_storm_chef_handler.html>`_.
   * - Updated Resources
     - A handler that provides a simple way to display resources that were updated during a |chef| run. `Download Updated Resources <https://rubygems.org/gems/chef-handler-updated-resources>`_.
