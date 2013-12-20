.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|knife search|

.. note:: The following changes were made to the |subcommand knife search| subcommand, starting with the 11.0.0 version of the |chef client|:

   * |subcommand knife search| will assume node search when the object type is omitted
   * |subcommand knife search| will search over roles, tags, |fqdn| and/or IP addresses when the given query is not in |apache solr| format, i.e. "does not contain a colon (``:``) character"

