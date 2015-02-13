.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Always use ``mixlib-shellout`` to shell out. Never use backticks, Process.spawn, popen4, or anything else!

As of |chef client| version 12 you can use ``shell_out``, ``shell_out!`` and ``shell_out_with_system_locale`` directly in |dsl recipe|.
