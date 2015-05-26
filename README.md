# chef-docs

The source of the Chef documentation, located at http://docs.chef.io/

This README focuses on people who want to contribute to the Chef documentation.



## Supported Documentation Formats

Chef currently builds HTML outputs from this docs collection for all versions of Chef since the 10.x releases. In addition, Man page outputs are maintained for the current versions of the chef-client and the Chef server. Sphinx can build other formats--PDF, ePub, and so on---but Chef is not actively maintaining documentation that builds into non-HTML or Man page formats.



## Getting Started

Sphinx is the authoring tool: http://sphinx-doc.org/

reStructuredText (RST) is the authoring format. Only a subset of the formatting options are used, plus there are some specific approaches to what type of formatting goes where, so please review the style guide: http://docs.chef.io/style_guide.html

There are several ways to provide feedback about the Chef documentation. See http://docs.chef.io/feedback.html or read [CONTRIBUTING](CONTRIBUTING).



## Setting Up


Fork and clone the chef-docs repo to your own account://

    git clone https://github.com/chef/chef-docs.git --depth 128
    # The full repo and all 9000+ commit is over 800MB, so the command
    # above only gets the last 128 commits of history. Omit '--depth 128'
    # if want the full history

You may wish to use [virtualenv](http://www.virtualenv.org/) & [virtualenvwrapper](http://virtualenvwrapper.readthedocs.org/) (similar to rvm or rbenv), to isolate this Python environment from others, so start out like so:

    sudo easy_install pip
    sudo pip install virtualenv

Add something like this to your .bashrc (or equivalent) and then `source .bashrc`:

    VIRTUALENV_SH=/usr/local/bin/virtualenvwrapper.sh
    if [ -x $VIRTUALENV_SH ]; then
      [ -d $HOME/.virtualenvs ] || mkdir $HOME/.virtualenvs
      export WORKON_HOME=$HOME/.virtualenvs
      source $VIRTUALENV_SH
    fi

Then `cd` to this directory and:

    mkvirtualenv chef-docs
    workon chef-docs
    echo chef-docs > .venv # personal preference, can hook into other control projects later
    pip install -r requirements.txt

If you don't use this and want to install into your system Python, prepend this command with `sudo`:

    pip install sphinx

Will install all the dependencies you should need.


## Building Docs

There's a `Makefile` in the root of the repo, that should have the majority of the tasks you'll ever need.

Run:

    make release

This will build *all* the documentation into HTML, and place it inside `./build/chef/`.
Open `./build/chef/index.html` to view the rendered files locally.

IMPORTANT: Depending on what has changed since the last time a build was run, the build process can take anywhere from a few minutes to a few hours. The make file gets changed a lot because Chef uses this file to manage how the docs get published to our website. For your local builds, you may want to edit the make file prior to building to only use the chef_master build, which is the build to use for the current version of Chef.

The first time you run the build, it will take longer (45-75 mins), as it has to generate _every_ file from scratch. (This time estimate assumes that you're building only the chef_master docs collection; additional docs collections will take additional time.)

This will also apply when you've run the `make clean` command, which effectively resets your working environment or if files located in the `/swaps` folder are changed.

Subsequent runs of `make release` should be relatively fast (2-5 mins), and you can use subsets. For example: `master` for the main docs build, `server` for the Chef server, `client` for the chef-client, and so on. The full list is available at the top of the `makefile`.

## Parallel Builds with Sphinx 1.2.x and up

The docs build can be parallelized to some degree now with

    make release PARALLEL_BUILD="-j X"

X should be specified in terms of the number of cpus your system has available for the docs building task.

If you have an 8 cpu machine, 6 might be a good number

    make release PARALLEL_BUILD="-j 6"

All current build types support the PARALLEL_BUILD option.

## About Docs Versions

All of the Chef documentation versions are maintained synchronously, without branches. This is to ensure that shared, single-sourced topics and strings are always shareable and never have to be maintained in separate files or branches.

IMPORTANT: If you want to build only the latest version of the docs, update your make file to only specify one (or more) of master, client, or server.

The following folders are used to build Chef documentation sets:

* chef_master -- the main set of documentation about the current versions of the chef-client, Ohai, the Chef server, and the Chef development kit. http://docs.chef.io

* client -- the main set of documentation about the current version of the chef-client. http://docs.chef.io/client/

* docs_server -- the documentation for the current version of the Chef server, Private Chef. http://docs.chef.io/server/

* devkit -- the main set of documentation about the current version of the development kit for the chef-client. http://docs.chef.io/client/

These sets of docs are actively maintained and in many places are identical (because the functionality is the same). Only where there is some divergence---some knife commands, server functionality, and so on---is there a difference in the documentation.

* docs_all -- a filtered set of the main set of documentation that a) has a single-page flat structure (including a flat table of contents) and b) consolidates much of the information in the main doc set into a smaller collection of longer pages. Some of the most popular pages in all of chef-docs land are found here, such as http://docs.chef.io/chef/resources.html, http://docs.chef.io/chef/dsl_recipe.html, and http://docs.chef.io/chef/knife.html. http://docs.chef.io/chef/

See http://docs.chef.io/releases.html for the full list of versions that are available.

The following folders are for versions of the chef-client:

* release_10
* release_11-0
* release_11-2
* release_11-4
* release_11-...

These docs collections can be found at http://docs.chef.io/release/version#/, e.g. http://docs.chef.io/release/10/ or http://docs.chef.io/release/11-6/

The following folders are for versions of the Enterprise Chef server:

* release_oec_11-0
* release_oec_11-1
* release_oec_11-2

The following folder is for the Private Chef server:

* release_private_chef

The following folders are for versions of the Open Source Chef server:

* release_osc_11-0
* release_osc_11-1

The following folders are for versions of Ohai:

* release_ohai-6
* release_ohai-7

If the subject matter for a specific release is identical to the current version of Chef (i.e. "hasn't changed"), then the file is simply a copy of the file that is located in chef_master. In some cases, subject matter has been consolidated for the 11 and 10 releases (so that it may take a new path for the 12 release) and the files from which those copies are made can be found in release_11-x_master.

All of the man_ folders are used to generate man pages for the various command line tools in Chef. Because man page layouts are different from HTML layouts, they cannot be simple copies. That said, they are otherwise identical and are using the same inclusion paths and follow the same layout patterns.

### About Release Notes

All of the versions have release notes. Append release_notes.html at the end of the base URL, i.e. http://docs.chef.io/release/ohai-7/release_notes.html


### How Frequently are Docs Versions Built?

Chef builds the following docs collections on a daily basis:

* chef_master
* docs_all
* docs_analytics
* docs_client
* docs_devkit
* docs_server
* release_[current_version]

Chef builds the following docs collections as needed, by request, or based on specific feedback:

* release_10
* release_11-0
* release_11-2
* release_11-4
* release_11-...
* release_12-...
* release_oec_11-...
* release_osc_11-...
* release_private_chef
* release_ohai-6
* release_ohai-7
* release_ohai-8

## Versioning strategy

The contents of many of the topics in this repo simply look like this:

    .. THIS PAGE IS IDENTICAL TO docs.chef.io/api_chef_server.html BY DESIGN

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

1. create a new file in the includes_resources folder by copying the existing file and appending -10-latest to the filename
2. in the new 10-latest file, make any desired change
3. update the include path in the 10-latest source file to pull in the new file

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

chef-docs uses only a subset of the RST syntax. Review the style guide: http://docs.chef.io/style_guide.html

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


Once pushed, visit your repo on GitHub, and open a Pull Request against `chef/chef-docs:master`.

## Previewing

You can preview your slide decks by launching a local
webserver. To use `node.js`, run:

    npm install -g grunt-cli
    npm install
    grunt serve

Then browse to http://localhost:8000

## License

[Creative Commons Attribution 3.0 Unported License](http://creativecommons.org/licenses/by/3.0/)

## Questions?

Open an [Issue](https://github.com/chef/chef-docs/issues) and ask. Or send email to docs@chef.io.
