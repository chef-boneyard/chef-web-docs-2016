.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets. 

The ``knife bootstrap`` command is common way to install the |chef client| on a node, as long as that node can download the package for the |chef client| from the |company_name| website to the target node. When using the ``knife bootstrap`` command, the |omnibus installer| will detect the version of the operating system and will install the appropriate version of the |chef client|.

The |omnibus installer| uses a single command to install the |chef client| and all of its dependencies, including an embedded version of |ruby|, |rubygems|, |open ssl|, key-value stores, parsers, libraries, and command line utilities. The |omnibus installer| puts everything into a unique directory (``opt/opscode/``) so that the |chef client| will not interfere with other applications that may be running on the target machine. Once installed, the |chef client| requires a few more configuration steps before it can perform its first |chef client| run on a node.
