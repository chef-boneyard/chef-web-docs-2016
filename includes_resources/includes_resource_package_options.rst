.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |rubygems| package provider attempts to use the |rubygems| API to install |gems| without spawning a new process, whenever possible. A |gems| command to install will be spawned under the following conditions:

* When a ``gem_binary`` attribute is specified (as a hash, a string, or by a .gemrc file), the provider will run that command to examine its environment settings and then again to install the |gem|.
* When install options are specified as a string, the provider will span a |gems| command with those options when installing the |gem|.
* The |omnibus installer| will search the PATH for a |gem| command rather than defaulting to the current |gem| environment. As part of ``enforce_path_sanity``, the ``bin`` directories area added to the PATH, which means when there are no other proceeding |rubygems|, the installation will still be operated against it.
