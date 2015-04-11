.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Each cookbook has its own |rubocop yml| file, which means that each cookbook may have its own set of enabled, disabled, and custom rules. That said, it's more common for all cookbooks to have the same set of enabled, disabled, and custom rules. When |rubocop| is run against a cookbook, the full set of enabled and disabled rules (as defined the ``enabled.yml`` and ``disabled.yml`` files in |rubocop| itself) are loaded first, and are then compared against the settings in the cookbook's |rubocop yml| file. 

Custom rules should be specified in the |rubocop yml| file. The state of rules---enabled or disabled---in a |rubocop yml| file take precedence over the state of rules defined in the ``enabled.yml`` and ``disabled.yml`` files.
