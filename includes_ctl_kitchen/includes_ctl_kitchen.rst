.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets. 


|kitchen_cli| is the command-line tool for |kitchen|, an integration testing tool used by the |chef client|. |kitchen| runs tests against any combination of platforms using any combination of test suites. Each test, however, is done against a specific instance, which is comprised of a single platform and a single set of testing criteria. This allows each test to be run in isolation, ensuring that different behaviors within the same codebase can be tested thoroughly before those changes are committed to production.

.. note:: Any |kitchen| subcommand that does not specify an instance will be applied to all instances.


