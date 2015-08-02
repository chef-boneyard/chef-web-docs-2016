.. The contents of this file are included in multiple topics and describes a note or a warning.
.. This file is very likely included in many spots across doc sets and versioned docs sets. It should be edited carefully, keeping in mind that it must be a neutral, matter-of-fact statement.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Another approach is to use the |resource package_gem| resource, and then specify the ``gem_binary`` location to the |rubygems| directory that is used by |chef|. For example:

.. code-block:: ruby

   gem_package 'package' do
     gem_binary Chef::Util::PathHelper.join(Chef::Config.embedded_dir,'bin','gem')
     action :install             
   end
