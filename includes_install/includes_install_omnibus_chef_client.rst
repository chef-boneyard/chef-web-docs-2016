.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets. 

In general, using the ``knife bootstrap`` command is the best way to install |chef| on a node and to create the |chef client|. When using the ``knife bootstrap`` command, the |omnibus installer| will detect the version of the operating system and will install the appropriate version of |chef|.

In some cases, using the |omnibus installer| to install |chef| on a node and then configure it to run as a |chef client| may be required. The |omnibus installer| uses a single command to install |chef| and all of its dependencies, including an embedded version of |ruby|, |rubygems|, |open ssl|, key-value stores, parsers, libraries, and command line utilities. The |omnibus installer| puts everything into a unique directory (opt/opscode/) so that |chef| will not interfere with other applications that may be running on the target machine. Once installed, |chef| requires a few more configuration steps before it can be run as a |chef client| on a node.
