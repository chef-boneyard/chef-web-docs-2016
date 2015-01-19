.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The |chef client| may be run in |chef client_audit|. Use this mode to run tests defined in ``control_group`` and ``control`` blocks against the target node for the purpose of auditing the node for desired compliance states. When the |chef client| run is finished, the results are sent to the |chef server|, and then routed to the |chef analytics| server for rules processing and visibility.
