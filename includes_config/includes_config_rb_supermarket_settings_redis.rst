.. The contents of this file are included in multiple topics.
.. THIS FILE SHOULD NOT BE MODIFIED VIA A PULL REQUEST.


This configuration file has the following settings for |redis|:

``supermarket['redis']['bind']``
   |bind redis| Default value: ``'127.0.0.1'``.

``supermarket['redis']['directory']``
   |directory generic| |default_value_recommended| Default value: ``"#{node['supermarket']['var_directory']}/redis"``.

``supermarket['redis']['enable']``
   |enable service| Default value: ``true``.

``supermarket['redis']['log_directory']``
   |directory logs| |default_value_recommended| Default value: ``"#{node['supermarket']['log_directory']}/redis"``.

``supermarket['redis']['log_rotation']``
   |log_rotation| Default value: ``{ 'file_maxbytes' => 104857600, 'num_to_keep' => 10 }``

``supermarket['redis']['port']``
   |port service| Default value: ``'16379'``.
