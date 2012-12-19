.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following handlers are available in the |chef| open source community:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Handler
     - Description
   * - |airbrake|
     - A |chef| handler that sends exceptions (only) to |airbrake|, an application that collects data and aggregates it for review. The |airbrake| handler is available from: https://github.com/morgoth/airbrake_handler.
   * - Asynchronous Resources
     - A |chef| handler that asynchronously pushes exception and report handler data to a |stomp| queue, from which data can be processed into data storage. The asynchronous resources handler is available from: https://github.com/rottenbytes/chef/tree/master/async_handler.  Blog post: http://www.rottenbytes.info/2011/07/28/asynchronous-reporting-with-chef/
   * - |campfire|
     - A |chef| handler that collects exception and report handler data and reports it to |campfire|, a web-based group chat tool. The |campfire| handler is available from: https://github.com/ampledata/chef-handler-campfire.
   * - |cloudkick|
     - A |chef| handler that collects exception and report handler data and sends it to |cloudkick|, a set of cloud server monitoring and management tools. The |cloudkick| handler is available from: https://github.com/ampledata/chef/blob/master/chef/lib/chef/handler/cloudkick_handler.rb.
   * - |datadog|
     - A |chef| handler that collects |chef| stats and sends them into a |datadog| newsfeed. The |datadog| handler is available from: https://github.com/DataDog/chef-handler-datadog.  See: http://www.miketheman.net/2011/11/28/ask-your-systems-whats-going-on/
   * - |graphite|
     - A |chef| handler that collects exception and report handler data and reports it to |graphite|, a graphic rendering application. The |graphite| handler is available from: https://github.com/imeyer/chef-handler-graphite/wiki.
   * - |graylog| / |graylog gelf|
     - A |chef| handler that provides exception and report handler status (including changes) to a |graylog| server, so that the data can be viewed using |graylog gelf|. The |graylog| handler is available from: https://github.com/jellybob/chef-gelf/.
   * - |growl|
     - A |chef| handler that collects exception and report handler data and then sends it as a |growl| notification. The |growl| handler is available from: http://rubygems.org/gems/chef-handler-growl.
   * - |hipchat|
     - A |chef| handler that collects exception handler data and sends it to |hipchat|, a hosted private chat service for companies and teams. The |hipchat| handler is available from: https://github.com/mojotech/hipchat/blob/master/lib/hipchat/chef.rb.
   * - |irc snitch|
     - A |chef| handler that notifies administrators (via |irc|) when a |chef| run fails. The |irc snitch| handler is available from: https://rubygems.org/gems/chef-irc-snitch.
   * - |nagios nsca|
     - A |chef| handler that supports |nagios nsca|, an add-on for |nagios|. This will allow |chef| report and exception handler messages to be passed to |nagios| from |nagios nsca|. The |nagios nsca| handler is available from: https://github.com/ranjibd/nsca_handler.
   * - Simple Email
     - A |chef| handler that collects exception and report handler data and then uses |pony| to send email reports that are based on |erubis| templates. The Simple Email handler is available from: https://rubygems.org/gems/chef-handler-mail.  Blog Post: http://jtimberman.posterous.com/a-simple-report-handler
   * - |splunk storm|
     - A |chef| handler that supports exceptions and reports for |splunk storm|. The |splunk storm| handler is available from: http://ampledata.org/splunk_storm_chef_handler.html.
   * - Updated Resources
     - A |chef| handler that provides a simple way to display resources that were updated during a |chef| run. The updated resources handler is available from: https://rubygems.org/gems/chef-handler-updated-resources.

