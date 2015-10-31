.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


To use the encrypted data bag item, do the following:

#. Ensure that ``metadata.rb`` for the build cookbook shows that it depends on the ``delivery-sugar`` cookbook (https://github.com/chef-cookbooks/delivery-sugar)
#. Update the |berksfile| to point to |github| for the cookbook. The line in your |berksfile| should be similar to: 

   .. code-block:: javascript

      cookbook 'delivery-sugar', github: 'chef-cookbooks/delivery-sugar'

From there, begin using the secrets by calling the ``get_project_secrets`` method. For example:

.. code-block:: ruby

   if push_repo_to_github?
     secrets = get_project_secrets
     github_repo = node['delivery']['config']['delivery-truck']['publish']['github']
   
     delivery_github github_repo do
       deploy_key secrets['github']
       branch node['delivery']['change']['pipeline']
       remote_url "git@github.com:#{github_repo}.git"
       repo_path node['delivery']['workspace']['repo']
       cache_path node['delivery']['workspace']['cache']
       action :push
     end
  end

which is part of the ``publish.rb`` recipe in the ``delivery-truck`` cookbook: https://github.com/chef-cookbooks/delivery-truck/blob/master/recipes/publish.rb#L91-L103.
