.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

It sometimes is necessary to gather information from many recipes in order to edit a single file.  For example, for ``/etc/aliases``.   One approach to this is to attempt to have a custom
resource iteratively edit the ``/etc/aliases`` file.  This approach typically runs into issues with use_inline_resources and the inability of the sub-resources inside of the custom resource
to notify a single execute resource to run the ``newaliases`` command once in the chef-client run.  The custom resource approach also means that since all the work to build the file happens
at compile time and the last recipe to execute in the run_list may insert some data into the ``/etc/aliases`` file that the ``newalias`` command must be run as a ``:delayed`` notification
at the very end of the chef-client run, so that no other recipes can depend on the aliases having been updated.

A better approach for this use case is to use a definition.  This builds a single template resource in the main resource collection iteratively.  It does so at compile time, and will insert
the template resource early in the run_list where it will be converged, you can then use an immediate notification to run ``newaliases`` and then subsequent recipes can rely on the fact that
the aliases will be setup early in compile time before any of their resources are converged.

Generally when the problem to be solved involves:

- Editing a single file multiple times, but the whole file is ultimately going to be managed
- Notifying a resource (or multiple resources) once the edits are done
- Writing the problem as a custom resource runs into trouble with notifications and use_inline_resources

Those are the ``code smells`` that a definition would better solve the problem than a resource.

.. code-block:: ruby

   # example provided by community member "Mithrandir". Thank you!
   
   define :email_alias, recipients: [] do
     # insert an execute[newaliases] resource if one is not found
     begin
       resoures(execute: 'newaliases')
     rescue Chef::Exceptions::ResourceNotFound
       execute 'newaliases' do
         action :nothing
       end
     end
    
     # insert a template[/etc/aliases] resource if one is not found
     t = nil
     begin
       t = resources(template: '/etc/aliases')
     rescue Chef::Exceptions::ResourceNotFound
       t = template '/etc/aliases' do
         source 'aliases.erb'
         cookbook 'aliases'
         variables({aliases: {} })
         notifies :run, 'execute[newaliases]', :immediately
       end
     end
   
     if params[:name]
       unless t.variables[:aliases].has_key?(params[:name])
         t.variables[:aliases][params[:name]] = []
       end
       t.variables[:aliases][params[:name]] << [ params[:recipients] ]
     end

     # return the template resource from the definition (Chef >= 12.0.0)
     t
   end

Which is then used in a recipe like this:

.. code-block:: ruby

   # send postmaster e-mail to alice and bob
   email_alias "postmaster" [ "alice", "bob" ]

   # send root e-mail to dan and eve
   email_alias "root" [ "dan", "eve" ]

   # insert the resources here if you haven't already
   email_alias

   # Chef >= 12.0.0: modify the template resource to notify another resource
   email_alias.notifies :write, 'log[aliases updated]', :immediately

The latter two examples are possible because of the way that we wrote the resource.  In the case where we do not supply any argument then ``params[:name]`` will be nil, and our
definition will create the execute and template resource, but no variables will be added to the aliases hash.  This can be put very early in your run_list in order to force
the aliases to converge very early (this example might be more useful if we were building a firewall ruleset and wanted to apply the firewall rules extremely early in our
run_list).

In the last example, we are not actually notifying off of the definition.  Definitons do not support notifications.  We are utilizing that we wrote the last line in the definition
to return the template resource.  In Chef 12.0.0 or later this will be correctly returned to the recipe code and our ``email_alias`` call will return the template, which we
then modify to add a notification to the returned template resource.  This lets us easily do "chef rewind" style modifications to the resource that we are building.  This is
just convenience and we could be explicit instead (but then we no longer use the definition code that creates the resource if it does not already exist):

.. code-block:: ruby
    # directly lookup the resource without going through the definition
    resources(template: '/etc/aliases').notifies :write, 'log[aliases updated]', :immediately

    # we can also lookup the execute resource this way
    resources(execute: 'newaliases').notifies :write, 'log[aliases updated]', :immediately

