# chef-docs

The source of the Chef Documentation, located at http://docs.opscode.com/

This README focuses on people who want to contribute to the Chef documentation.

## Setting Up

First, read [CONTRIBUTING](CONTRIBUTING).

Next, read the style guide: http://docs.opscode.com/style_guide.html

Sphinx is the authoring tool used by chef-docs: http://sphinx-doc.org/

Fork & Clone repo to your own account://

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

The first time you run the build, it will probably take longer (5-10 min), as it has to generate _every_ file from scratch.

This will also apply if you've run the `make clean` command, which effectively resets your working environment.

Subsequent runs of `make release` should be relatively fast, and you can use subsets named: `master, all, server` to build one part.

## Editing

Edit any RST files as you would any other text file.
Sphinx syntax reference can be found here: http://sphinx-doc.org/

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
