.. The contents of this file are included in multiple topics.
.. THIS FILE SHOULD NOT BE MODIFIED VIA A PULL REQUEST.


This configuration file has the following settings for database configurations:

``supermarket['database']['extensions']``
   Default value: ``{ 'pgpsql' => true, 'pg_trgm' => 'true' }``.

``supermarket['database']['host']``
   Default value: ``node['supermarket']['postgresql']['listen_address']``.

``supermarket['database']['name']``
   Default value: ``'supermarket'``.

``supermarket['database']['pool']``
   Default value: ``node['supermarket']['sidekiq']['concurrency']``.

``supermarket['database']['port']``
   Default value: ``node['supermarket']['postgresql']['port']``.

``supermarket['database']['user']``
   Default value: ``node['supermarket']['postgresql']['username']``.
