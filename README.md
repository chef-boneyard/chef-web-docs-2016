# chef-docs

The source of the Chef documentation, located at http://docs.opscode.com/

This README focuses on people who want to contribute to the Chef documentation.



## Getting Started

Sphinx is the authoring tool: http://sphinx-doc.org/

reStructuredText (RST) is the authoring format. Only a subset of the formatting options are used, plus there are some specific approaches to what type of formatting goes where, so please review the style guide: http://docs.opscode.com/style_guide.html

There are several ways to provide feedback about the Chef documentation. See http://docs.opscode.com/feedback.html or read [CONTRIBUTING](CONTRIBUTING).



## Setting Up


Fork and clone the chef-docs repo to your own account://

    git clone https://github.com/opscode/chef-docs.git
    # will take a while, repo is ~800MB

You may wish to use [virtualenv](http://www.virtualenv.org/) & [virtualenvwrapper](http://virtualenvwrapper.readthedocs.org/) (similar to rvm or rbenv), to isolate this Python environment from others, so start out like so:

    mkvirtualenv chef-docs
    workon chef-docs
    echo chef-docs > .venv # personal preference, can hook into other control projects later

If you don't use this and want to install into your system Python, prepend this command with `sudo`:

    pip install sphinx

Will install all the dependencies you should need.

There are other ways to install Sphinx as well. For example:

    brew install sphinx

for those using Homebrew.



## Building Docs

There's a `Makefile` in the root of the repo, that should have the majority of the tasks you'll ever need.

Run:

    make release

This will build *all* the documentation into HTML, and place it inside `./build/chef/`.
Open `./build/chef/index.html` to view the rendered files locally.

IMPORTANT: Depending on what has changed since the last time a build was run, the build process can take anywhere from a few minutes to a few hours. The make file gets changed a lot because Chef uses this file to manage how the docs get published to our website. For your local builds, you may want to edit the make file prior to building to only use the chef_master build, which is the build to use for the current version of Chef.

The first time you run the build, it will probably take longer (30-45 min), as it has to generate _every_ file from scratch.

This will also apply when you've run the `make clean` command, which effectively resets your working environment or if files located in the `/swaps` folder are changed.

Subsequent runs of `make release` should be relatively fast (2-5 mins), and you can use subsets. For example: `master` for the main docs build, `enterprise` for Enterprise Chef, `open_source` for Open Source Chef, and so on. The full list is available at the top of the `makefile`.


## About Docs Versions

All of the Chef documentation versions are maintained synchronously, without branches. This is to ensure that shared, single-sourced topics and strings are always shareable and never have to be maintained in separate files or branches.

IMPORTANT: If you want to build only the latest version of the docs, update your make file to only specify one (or more) of master, open_source, or enterprise.

The following folders are used to build Chef documentation sets:

chef_master -- the main set of documentation about the current versions of the chef-client, Ohai, the Open Source Chef Server, and the Enterprise Chef Server. http://docs.opscode.com

client -- the main set of documentation about the current version of the chef-client. http://docs.opscode.com/client/

docs_oec -- a filtered set of documentation about the current version of the Enterprise Chef Server. http://docs.opscode.com/enterprise/

docs_osc -- a filtered set of documentation about the current version of the Open Source Chef Server. http://docs.opscode.com/open_source/

These sets of docs are actively maintained and in many places are identical (because the functionality is the same). Only where there is some divergence---some knife commands, server functionality, and so on---is there a difference in the documentation.

docs_all -- a filtered set of the main set of documentation that a) has a single-page flat structure (including a flat table of contents) and b) consolidates much of the information in the main doc set into a smaller collection of longer pages. Some of the most popular pages in all of chef-docs land are found here, such as http://docs.opscode.com/chef/resources.html, http://docs.opscode.com/chef/dsl_recipe.html, and http://docs.opscode.com/chef/knife.html. http://docs.opscode.com/chef/

docs_server -- the documentation for the first version of the on-premises Chef server, Private Chef. http://docs.opscode.com/server/

The following folders are for versions of the chef-client:

release_10
release_11-0
release_11-2
release_11-4
release_11-6
release_11-8
release_11-10

These docs collections can be found at http://docs.opscode.com/release/version#/, i.e. http://docs.opscode.com/release/10/ or http://docs.opscode.com/release/11-6/

The following folders are for versions of the Enterprise Chef Server:

release_oec_11-0

The following folders are for versions of Ohai:

release_ohai-6
release_ohai-7



### About Release Notes

All of the versions have release notes. Append release_notes.html at the end of the base URL, i.e. http://docs.opscode.com/release/ohai-7/release_notes.html


### How Frequently are Docs Versions Built?

Chef builds the following docs collections on a daily basis:

chef_master
client
docs_oec
docs_osc
release_ohai-7
release_11-10

Chef builds the following docs collections often, but not necessarily every day:

docs_all

Chef builds the following docs collections as needed, by request, or based on specific feedback, but typically not "daily" or "often":

docs_server
release_10
release_11-0
release_11-2
release_11-4
release_11-6
release_11-8
release_oec_11-0
release_ohai-6

Note that Ohai 7 documents are also included in the chef_master doc collection (so those topics get rebuilt every day for the root collection).

## Versioning strategy

The contents of many of the topics in this repo simply look like this:

    .. THIS PAGE IS IDENTICAL TO docs.opscode.com/api_chef_server.html BY DESIGN
      
    .. include:: ../../chef_master/source/api_chef_server.rst

especially outside of the main chef_master topic collection.

Unless or until the contents of any given page actually changes, we'll use the cloning strategy. For example, the ifconfig resource hasn't changed at all in any version of Chef documentation. When the contents need to change, such as the file-based resource refactor that occurred in the chef-client 11.6 release, then we'll bifurcate the source files (as necessary) and hook in the correct files for the correct versions.

The docs versioning in this repo isn't done using git tags or branches. It's done within the repo itself by adding files. This is to preserve the string/description/terminology in a single source that builds across all of our possible versions. Effectively, all versions of Chef documentation are maintained synchronously

Let's say the template resource is wholly different in chef-client version 10-latest (when compared to chef_master), which it is. So when the topic in 10-latest needs to be different, start by copying the contents of the main file in chef_master and add it into the 10-latest file so it looks like this:

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

### So what types of files typically change?

Mostly the settings have changed in the versioning effort. Knife attributes get added, resource attributes get added. New features get added, but generally don't require appending version info to them because they start out fresh and clean.

### So what types of changes do we want?

The goal here isn't to have unique collections of files for each version of the application. So, for example, let's say an overview for something mentions a specific version of Chef. Instead of versioning that, it may well be better to rewrite that overview to ensure it's agnostic to versions of Chef and moving that specific mention into the source file for that actual release.

Or perhaps splitting the file into two pieces, and then versioning one of those new pieces is the right approach. (This one may require updates to all versions of Chef! But that's OK!)

We want as many topics as possible to be true for as many versions of Chef as possible.


## Editing

chef-docs uses only a subset of the RST syntax. Review the style guide: http://docs.opscode.com/style_guide.html

Always make changes on a 'feature' branch in your own fork, so you can always merge back to `master` cleanly.

Here's how this might look:

    git pull origin master
    git pull upstream master
    git checkout --branch my_new_edit
    # make changes to some file
    make all
    # open file(s) changed in a browser, validate success
    git add <filename changed>
    git commit
    # enter a good commit message
    git push origin my_new_edit
    
Once pushed, visit your repo on GitHub, and open a Pull Request against `opscode/chef-docs:master`.

## License

[Creative Commons Attribution 3.0 Unported License](http://creativecommons.org/licenses/by/3.0/)

## Questions?

Open an [Issue](https://github.com/opscode/chef-docs/issues) and ask. Or send email to docs@opscode.com.
