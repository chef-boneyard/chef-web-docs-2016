.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Supervisor logs are created and managed directly by the service supervisor, and are automatically rotated when a the current log file reaches 1,000,000 bytes. 10 log files are kept. The latest supervisor log is always located in ``/var/log/opscode/service_name/current`` and rotated logs have a filename starting with ``@`` followed by a precise ``tai64n`` timestamp based on when the file was rotated.
