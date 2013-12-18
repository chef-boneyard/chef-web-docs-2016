# release_chef_10-latest

The source of the documentation for the chef-client, version 10-latest, published to http://docs.opscode.com/release/10-latest/

This README focuses on contributing to this specific folder within the chef-docs repo, because this folder is a different from the other published-version folders. This one is keeping current with an *older* version of the chef-client, but a version that is still undergoing some changes.

The starting point for this version is a direct clone of the 11-6 repo, complete with all of the changes that existed at that time. There are a few reasons for this:

1) much of the behavior of Chef, regardless of version, is the same
2) many things like knife plugins and community cookbooks are agnostic to the chef-client version and/or should be expected to work the same, regardless (even if that isn't always true)
3) string descriptions, terminology, and pattern advice is therefore generally assumed to be the same, so as these elements of the documentation get better, we want to preserve these improvements across versions wherever possible
4) this version of the chef-client will work with any version of the server, open source or enterprise

Until the consensus is such that people agree that this doc collection represents a "done" set of content for the chef-client 10-latest release, the version footer will include "(pending updates)" and the main page will have a warning at the top stating as such.

# How should I make changes?

The structure of the source files is designed to ensure that the same topic can be published in exactly the same way across any document version. That said, there will be instances where what is required for chef-client 10.latest is different from chef-client 11.x. Especially in the topics that follow the essentials_ naming pattern.

a) are the changes that need to be made changes that apply to the chef-client globally? If yes, then update the file directly in the file(s) identified by the include_ paths
b) If no, then do one of two things: copy the contents from the file(s) identified by the include_ paths and paste them into the 10.latest source file, edit and make the desired changes. This will be reconciled later (if possible) by the Chef doc team. Or, follow the approach discussed below under "Versioning strategy" if the desired changes are definitely specific to chef-client 10.latest.

# Versioning strategy

The contents of many of the topics in this repo simply look like this:

    .. THIS PAGE IS IDENTICAL TO docs.opscode.com/api_chef_server.html BY DESIGN
      
    .. include:: ../../chef_master/source/api_chef_server.rst

and as long as we know that a page is still identical to the current version of that same topic that is managed/maintained in chef_master (which is the current version of everything, published to the docs.opscode.com root), then we should keep it the same and focus improvement efforts into the primary version folder.

The docs versioning in this repo isn't done using git tags or branches. It's done within the repo itself by adding files. This is to preserve the string/description/terminology in a single source that builds across all of our possible versions.

Let's say the template resource is wholly different in chef-client version 10-latest (when compared to chef_master), which it is. So when the topic in 10-latest needs to be different, start by copying the contents of the main file and putting it into the 10-latest file so it looks like this:

    =====================================================
    template
    =====================================================
    .. include:: ../../includes_cookbooks/includes_cookbooks_template.rst
    
    .. note:: |note cookbook template erubis|
    
    .. include:: ../../includes_resources/includes_resource_generic.rst
    
    .. include:: ../../includes_resources/includes_resource_template.rst
    
    Syntax
    =====================================================
    .. include:: ../../includes_resources/includes_resource_template_syntax.rst
     
    Actions
    =====================================================
    .. include:: ../../includes_resources/includes_resource_template_actions.rst
     
    # TRUNCATED FOR BREVITY
    
    **Apply proxy settings consistently across a Chef organization**
      
    .. include:: ../../step_resource/step_resource_template_consistent_proxy_settings.rst
     
    **Get template settings from a local file**
      
    .. include:: ../../step_resource/step_resource_template_get_settings_from_local_file.rst

So now instead of being a direct clone of the file in chef_master this file is configured to pull in the same exact content. Now we can version part of the file. Let's say the syntax is different in 10-latest. So

a) create a new file in the includes_resources folder by copying the existing file and appending -10-latest to the filename
b) in the new 10-latest file, make any desired change
c) update the include path in the 10-latest source file to pull in the new file

like this:

    Syntax
    =====================================================
    .. include:: ../../includes_resources/includes_resource_template_syntax-10-latest.rst

(the use of underscores in the filename vs. hyphens for versions is deliberate and a pattern that forces both humans to pay attention and the build to get an extra trigger for when humans screw that up, and therefore catches breaking files more directly)

And then if everything else in the template resource file is the same for 10-latest, we can move forward with just the single file difference. This ensures that the other parts of the template resource that are still the same will remain so.

# So what types of files typically change?

Mostly the settings have changed in the versioning effort. Knife attributes get added, resource attributes get added. New features get added, but generally don't require appending version info to them because they start out fresh and clean.

This will be interesting because we're, effectively, going back in time. So some -10-latest filename extensions are expected, especially around attributes, config settings, resources/providers, recipe DSL methods, and Knife subcommands.

# So what types of changes do we want?

The goal here isn't to have unique collections of files for each version of the application. So, for example, let's say an overview for something mentions a specific version of Chef. Instead of versioning that, it may well be better to rewrite that overview to ensure it's agnostic to versions of Chef and moving that specific mention into the source file for that actual release.

Or perhaps splitting the file into two pieces, and then versioning one of those new pieces is the right approach. (This one may require updates to all versions of Chef! But that's OK!)

We want as many topics as possible to be true for as many versions of Chef as possible.

# So how do I change the images?

If they are a screen shot, just make sure they are filenamed with the right pattern and in PNG.

If they are a drawing, tell jamescott via docs.opscode.com, via git PR or issue, or through hipchat. Some of these drawings will need to be updated for -10-latest.

# Release Notes

We'll keep a single release notes topic, and will use headers within that file to document any changes that need to be visible, known issues, and fixes.

# Conclusion

This may be an unfamiliar approach for versioning content. The real goal here is single-sourcing of content *across* versions, which isn't possible if releases have their own repos or if releases don't share source files. This allows improvements to be made to many versions of content at the same time and/or forces awareness around what ends up being different in the products as they change over time. 

If you have questions, ask chef-docs via docs@opscode.com.
