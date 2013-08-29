.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |service chef| service's ``current`` log contains a history of errors and successful requests related to API endpoints used by this service. The following is an example log entry for a successful request:

.. code-block:: ruby

   2013-08-06_16:16:04.12787 ~ Started request handling: 2013-08-06 16:16:04 +0000 
   2013-08-06_16:16:04.12789 ~ Params: {"controller"=>"environments", "action"=>"index", "organization_ 
   2013-08-06_16:16:04.12789 ~ {:before_filters_time=>0.070703507, :after_filters_time=>9.6654e-05, :ac

An error, on the other hand produces a large amount of output. The following is a partial example log entry for an error:

.. code-block:: ruby

   2013-07-01_20:05:50.33305 ~ Params: {"full_name"=>"Pre-created", "name"=>"igcjdzrvesvmevinbqsz", "or 
   2013-07-01_20:05:50.33305 ~ Organization create failed: Server broke connection: , Server broke conn 
   2013-07-01_20:05:50.33307 /opt/opscode/embedded/service/gem/ruby/1.9.1/gems/rest-client-1.6.7/lib/res 
   2013-07-01_20:05:50.33307 /opt/opscode/embedded/service/gem/ruby/1.9.1/gems/rest-client-1.6.7/lib/res 
   2013-07-01_20:05:50.33307 /opt/opscode/embedded/service/gem/ruby/1.9.1/gems/rest-client-1.6.7/lib/res 
   2013-07-01_20:05:50.33308 /opt/opscode/embedded/service/gem/ruby/1.9.1/gems/rest-client-1.6.7/lib/res 
   2013-07-01_20:05:50.33308 /opt/opscode/embedded/service/gem/ruby/1.9.1/bundler/gems/mixlib-authorizat 
   2013-07-01_20:05:50.33308 /opt/opscode/embedded/service/gem/ruby/1.9.1/bundler/gems/mixlib-authorizat 
   2013-07-01_20:05:50.33309 /opt/opscode/embedded/service/gem/ruby/1.9.1/bundler/gems/mixlib-authorizat 
   2013-07-01_20:05:50.33310 /opt/opscode/embedded/service/gem/ruby/1.9.1/bundler/gems/mixlib-authorizat 
   2013-07-01_20:05:50.33310 /opt/opscode/embedded/service/gem/ruby/1.9.1/bundler/gems/mixlib-authorizat 
   2013-07-01_20:05:50.33310 /opt/opscode/embedded/service/gem/ruby/1.9.1/bundler/gems/mixlib-authorizat 
   2013-07-01_20:05:50.33311 /opt/opscode/embedded/service/gem/ruby/1.9.1/bundler/gems/mixlib-authorizat 
   2013-07-01_20:05:50.33311 /opt/opscode/embedded/service/gem/ruby/1.9.1/bundler/gems/mixlib-authorizat 
   2013-07-01_20:05:50.33312 /opt/opscode/embedded/service/gem/ruby/1.9.1/bundler/gems/mixlib-authorizat 
   2013-07-01_20:05:50.33312 /opt/opscode/embedded/service/gem/ruby/1.9.1/bundler/gems/mixlib-authorizat 
   2013-07-01_20:05:50.33312 /opt/opscode/embedded/service/gem/ruby/1.9.1/bundler/gems/mixlib-authorizat 
   2013-07-01_20:05:50.33313 /opt/opscode/embedded/service/gem/ruby/1.9.1/bundler/gems/mixlib-authorizat 
   2013-07-01_20:05:50.33313 /opt/opscode/embedded/service/gem/ruby/1.9.1/bundler/gems/mixlib-authorizat 
   2013-07-01_20:05:50.33313 /opt/opscode/embedded/service/gem/ruby/1.9.1/bundler/gems/mixlib-authorizat 
   2013-07-01_20:05:50.33314 /opt/opscode/embedded/service/gem/ruby/1.9.1/bundler/gems/mixlib-authorizat 
   2013-07-01_20:05:50.33314 /opt/opscode/embedded/service/gem/ruby/1.9.1/bundler/gems/mixlib-authorizat 
   2013-07-01_20:05:50.33315 /opt/opscode/embedded/service/gem/ruby/1.9.1/bundler/gems/mixlib-authorizat 
   2013-07-01_20:05:50.33315 /opt/opscode/embedded/service/gem/ruby/1.9.1/bundler/gems/mixlib-authorizat 
   2013-07-01_20:05:50.33315 /opt/opscode/embedded/service/opscode-account/app/controllers/organizations
