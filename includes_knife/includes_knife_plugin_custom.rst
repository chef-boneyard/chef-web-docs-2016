.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|chef| will load |knife| and |knife| plugin commands from the following locations:

* The home directory: ``~/.chef/plugins/knife/``
* A ``.chef/plugins/knife`` directory in the cookbook repository
* From |rubygems|, installed to the ``/chef/knife/`` directory, such as |opscode|-maintained plugins like ``knife google``, ``knife windows``, and ``knife openstack``

This approach allows |knife| plugins to be reused across projects in the home directory, kept in a repository that is accessible to other team members, and distributable to the |chef| community using |rubygems|.
