.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The direct use of the ``updated_by_last_action`` method is deprecated.  All modern and correct LWRPs
should declare use_inline_resources and use either only core Chef resources or converge_by blocks around
their actions which modify the system state.  Providers which still manually set updated_by_last_action
must be fixed.

