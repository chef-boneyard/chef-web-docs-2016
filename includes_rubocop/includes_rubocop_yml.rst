.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Use a |rubocop yml| file in a cookbook to override the default settings in |rubocop| for enabled and disabled rules. Only enabled rules---either in the ``enabled.yml`` file in |rubocop| itself or rules that are specifically enabled in a cookbook's |rubocop yml| file---will be used during the evaluation. Any rule that becomes unhelpful should be disabled in the |rubocop yml| file.
