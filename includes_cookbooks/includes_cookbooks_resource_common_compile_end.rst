=====================================================
End
=====================================================







There are certain situations where it would be advantageous to manipulate the Chef::ResourceCollection after it has been compiled - essentially, we need after hooks between the compilation and execution stages of Chef.

This can be done today by simply making the recipes that include your 'after' hooks run at the end of the compilation - but it becomes difficult to manage a number of such hooks. An example of what is possible today:

An after hook in Chef 0.5.4
collection.each do |r|
  if r.provider == Chef::Provider::Package::Rubygems
    r.notify :run, resources(:execute => "random command")
  end
end
This would make sure that a random command gets notified every time a Gem package is installed. Another, more interesting case is with a package provider such as Yum, that is very costly to run. It would be great to let people distribute code that hooks in to the recipe process, and makes all package installations occur once. What follows is some untested code that would accomplish this:

Package Bundling for Yum
package_list = Array.new # The packages we are going to install at once
injection_point = 0      # Where in the resource collection the first package install appears 
collection.each_index do |i| # Walk the index
  r = collection[i] # Set the current resource to r
  # if it is a yum package
  if Chef::Platform.find_provider_for_node(node, r) == Chef::Provider::Package::Yum
    # And we are installing without a version
    if r.action == :install && !r.version 
      # Store the location, set the action to nothing, and store the name of the package
      injection_point = i unless injection_point == 0
      r.action(:nothing) 
      package_list << r.package_name
    end
  end
end
 
# Create a resource to install all the yum pkgs at once
all_packages = execute "yum bundle" do
  command "yum install #{package_list.join(' ')}"
end
# Insert the new resource
collection.insert(i, all_packages)
Long term
It would be great to basically allow any recipe to embedd functionality like this, extending and modifying Chef. We propose the creation of an 'after' hook, that when it appears in any recipe will get executed at the end of the execution cycle. It will be passed the node and the resource collection. So the above would be wrapped:

After hook version of Package Bundling for Yum
after "yum bundle" do |node, collection|
  package_list = Array.new # The packages we are going to install at once
  injection_point = 0      # Where in the resource collection the first package install appears 
  collection.each_index do |i| # Walk the index
    r = collection[i] # Set the current resource to r
    # if it is a yum package
    if Chef::Platform.find_provider_for_node(node, r) == Chef::Provider::Package::Yum
      # And we are installing without a version
      if r.action == :install && !r.version 
        # Store the location, set the action to nothing, and store the name of the package
        injection_point = i unless injection_point == 0
        r.action(:nothing) 
        package_list << r.package_name
      end
    end
  end
 
  # Create a resource to install all the yum pkgs at once
  all_packages = execute "yum bundle" do
    command "yum install #{package_list.join(' ')}"
  end
  # Insert the new resource
  collection.insert(i, all_packages)
end
Note that, in this specific case, there are interesting edge cases. If you specify the version of a package, and we first bundle up a package that depends on it, with yum you will likely not get the behavior you want (you'll get the current version of the dependency, most likely.) Them's the breaks when you manipulate stuff this way.  


None
2 Comments Hide/Show Comments
Apr 25, 2009
Thorsten
This looks pretty cool. Here are my thoughts upon reading this, bearing in mind that I don't understand the details of the code...

If I remember correctly, you currently have three phases: first the resources get compiled, then they get executed, then there may be delayed notifications. What I would have thought of is to create before and after hooks around the resource execution stage. So the above example would have been a before_hook.

In terms of mechanics, I would find it cleaner if the code were more integrated into the provider itself. So I would see the package provider itself stash the information away into a variable that remains available to before and after hooks. And then the package provider would schedule the before_hook with a :once option so even if it gets scheduled umpteen times it only runs once.

An advanced notion you might want to consider (but not yet implement) is the ability to run before_hooks in parallel. The reason I'm thinking about that is that one could use the before hooks to not only install packages, but also download templates files and any large tgz archives that may be needed. Would be nice if these things could occur in parallel. On the other hand, maybe it's better to allow concurrency when executing resources: a resource could "fork" in a controlled manner to do longer running stuff and chef would do a join before executing the after_hooks.
Permalink
 Oct 23, 2009
Dan DeMaggio
I agree with Thorsten. The "main event" of chef is the execution of resources. So "Before" and "After" make more sense around execution, not compilation. In fact, maybe notifications could be implemented as an "After execution" hook.

I think this "after execution" hook could solve my problem: "install collectd apache monitor only if apache and collectd recipes have been executed." (But I'm not even clear where these before/after hooks go. In Recipes? in Resources? I could see people wanting both.)

If we want a "before compilation" hook, right now, we can put code in /etc/chef/(client|solo).rb. That's pretty hacky, so maybe there should be a cookbook/boot.rb or something.

Of course then someone is going to need the before/after hooks ordered, and someone else is going to need guarantees about execution in the face of errors, etc. Thorny problem. The before/after/around filters in Rails come to mind as a good solution.