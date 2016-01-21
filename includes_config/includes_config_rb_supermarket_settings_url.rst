.. The contents of this file are included in multiple topics.
.. THIS FILE SHOULD NOT BE MODIFIED VIA A PULL REQUEST.


This configuration file has the following settings for URLs:

``supermarket['chef_blog_url']``
   Default value: ``"https://www.#{node['supermarket']['chef_domain']}/blog"``.

``supermarket['chef_docs_url']``
   Default value: ``"https://docs.#{node['supermarket']['chef_domain']}"``.

``supermarket['chef_downloads_url']``
   Default value: ``"https://downloads.#{node['supermarket']['chef_domain']}"``.

``supermarket['chef_domain']``
   Default value: ``'chef.io'``.

``supermarket['chef_identity_url']``
   Default value: ``"#{node['supermarket']['chef_server_url']}/id"``.

``supermarket['chef_manage_url']``
   Default value: ``node['supermarket']['chef_server_url']``.

``supermarket['chef_profile_url']``
   Default value: ``node['supermarket']['chef_server_url']``.

``supermarket['chef_sign_up_url']``
   Default value: ``"#{node['supermarket']['chef_server_url']}/signup?ref=community"``.

``supermarket['chef_www_url']``
   Default value: ``"https://www.#{node['supermarket']['chef_domain']}"``.

``supermarket['learn_chef_url']``
   Default value: ``"https://learn.#{node['supermarket']['chef_domain']}"``.
