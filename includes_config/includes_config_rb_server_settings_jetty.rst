.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This configuration file has the following settings for ``jetty``:

``jetty['enable']``
   |enable service| Default value: ``'false'``. This value should not be modified.

``jetty['ha']``
   |use ha| |ha true| Default value: ``'false'``.

``jetty['log_directory']``
   |directory logs| |default_value_recommended| Default value:

   .. code-block:: ruby

      '/var/opt/opscode/opscode-solr4/jetty/logs'
