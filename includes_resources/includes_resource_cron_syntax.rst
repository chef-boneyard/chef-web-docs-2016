.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the |resource cron| resource in a recipe is as follows:

.. code-block:: ruby

   cron "name" do
     attribute "value" # see attributes section below
     ...
     action :action # see actions section below
   end

where 

* ``cron`` tells the |chef client| to use the ``Chef::Provider::Cron`` provider during the |chef client| run
* ``"name"`` is the name of the cron entry
* ``attribute`` is zero (or more) of the attributes that are available for this resource
* ``:action`` is the step that the resource will ask the provider to take during the |chef client| run

For example, the following example runs weekly cookbook reports:

.. code-block:: ruby

   cron "cookbooks_report" do
     action node.tags.include?('cookbooks-report') ? :create : :delete
     minute "0"
     hour "0"
     weekday "1"
     user "opscode"
     mailto "nharvey@opscode.com"
     home "/srv/opscode-community-site/shared/system"
     command %Q{
       cd /srv/opscode-community-site/current &&
       env RUBYLIB="/srv/opscode-community-site/current/lib"
       RAILS_ASSET_ID=`git rev-parse HEAD` RAILS_ENV="#{rails_env}"
       bundle exec rake cookbooks_report
     }
   end
