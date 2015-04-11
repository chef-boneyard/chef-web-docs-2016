.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Each cookbook has its own |rubocop yml| file, which means that each cookbook may have its own set of enabled, disabled, and custom rules. That said, it's more common for all cookbooks to have the same set of enabled, disabled, and custom rules. When |rubocop| is run against a cookbook, the full set of enabled and disabled rules are loaded first, and then compared against that cookbook's |rubocop yml| file. Custom rules should be specified in the |rubocop yml| file.
