.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The |chef client| will load |knife| and |knife| plugin commands from the following locations:

* The home directory: ``~/.chef/plugins/knife/``
* A ``.chef/plugins/knife`` directory in the cookbook repository
* A plugin installed from |rubygems|. (For more information about releasing a plugin on |rubygems|, see: http://guides.rubygems.org/make-your-own-gem/.)

This approach allows |knife| plugins to be reused across projects in the home directory, kept in a repository that is accessible to other team members, and distributable to the |chef| community using |rubygems|.
