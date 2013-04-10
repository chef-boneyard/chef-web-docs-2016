.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The following example shows how to modify the default script for |ubuntu| 12.04. First, copy the bootstrap template from the default location. If |chef| is installed from a |rubygems|, the full path can be found in the |gem| contents:

.. code-block:: bash

   % gem contents chef | grep ubuntu12.04-gems
   /Users/jtimberman/.rvm/gems/ruby-1.9.2-p180/gems/chef-0.10.2/lib/chef/knife/bootstrap/ubuntu12.04-gems.erb

Copy the template to the |chef| repository in the ``.chef/bootstrap`` directory:

.. code-block:: bash

   % cp /Users/jtimberman/.rvm/gems/ruby-1.9.2-p180/gems/chef-0.10.2/
      lib/chef/knife/bootstrap/ubuntu12.04-gems.erb ~/chef-repo/.chef/
      bootstrap/ubuntu12.04-gems-mine.erb

Modify the template with any editor, then use it with the ``-d`` or ``--distro`` option in the ``knife bootstrap`` operation, or use any of the |knife| plug-ins that support cloud computing.

.. code-block:: bash

   $ knife bootstrap 192.168.1.100 -r 'role[webserver]' -d ubuntu12.04-gems-mine

Alternatively, an example bootstrap template can be found in the |chef| source repository: https://github.com/opscode/chef/blob/master/lib/chef/knife/bootstrap/ubuntu12.04-gems.erb. Copy the template to ``~/.chef-repo/.chef/bootstrap/ubuntu12.04-apt.erb`` and modify the template appropriately.







