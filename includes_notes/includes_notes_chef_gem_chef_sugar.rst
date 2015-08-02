.. The contents of this file are included in multiple topics and describes a note or a warning.
.. This file is very likely included in many spots across doc sets and versioned docs sets. It should be edited carefully, keeping in mind that it must be a neutral, matter-of-fact statement.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


If you are using ``chef-sugar``---a `community cookbook <https://supermarket.chef.io/cookbooks/chef-sugar>`__---it must be version 3.0.1 (or higher) to use the previous example. If you are using an older version of ``chef-sugar``, the following workaround is required:

.. code-block:: ruby

   chef_gem 'gem_name' do
     compile_time true if Chef::Resource::ChefGem.instance_methods(false).include?(:compile_time)
   end

See this `blog post <http://jtimberman.housepub.org/blog/2015/03/20/chef-gem-compile-time-compatibility/>`__ for more background on this behavior.
