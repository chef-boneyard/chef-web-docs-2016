.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


.. warning:: The direct use of ``updated_by_last_action`` is deprecated; any provider that is using this method must be updated to use the ``use_inline_resources`` method instead. For actions that modify the system state, define them with core |chef| resources or group them within ``converge_by`` blocks.
