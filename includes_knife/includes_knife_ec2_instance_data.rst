.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``instance data`` argument is used to generate instance metadata used with custom |opscode| |amazon ami|. This process will read the validation certificate and |chef server| URL from the |knife| configuration file (|path chef knife rb|) and will output the data in JSON format.

.. note:: Using this sub-command is an older way of launching |amazon ec2| instances for |chef| and should be considered deprecated. Using the ``server create`` sub-command is preferred (and more flexible). Although this sub-command will remain, the |opscode| custom |amazon ami| are out of date.

This argument has the following syntax::

   knife ec2 instance data (options)

This argument has the following options:

``-A KEY``, ``--aws-access-key-id KEY``
   |aws-access-key-id|

``-c CONFIG``, ``--config CONFIG``
   |config|

``--color``
   |color|

``--defaults``
   |defaults|

``-e EDITOR``, ``--editor EDITOR``
   |editor|

``-e``, ``--edit``
   |edit|

``-E ENVIRONMENT``, ``--environment ENVIRONMENT``
   |environment|

``-F FORMAT``, ``--format FORMAT``
   |format|

``-h``, ``--help``
   |help|

``-k KEY``, ``--key KEY``
   |key|

``-K SECRET``, ``--aws-secret-access-key SECRET``
   |aws-secret-access-key|

``--no-color``
   |no-color|

``-n``, ``--disable-editing``
   |no-editor|

``--print-after``
   |print-after|

``-r RUN_LIST``, ``--run-list RUN_LIST``
   |run-list|

``--region REGION``
   |region amazon|

``-s URL``, ``--server-url URL``
   |server-url|

``-u USER``, ``--user USER``
   |user|

``-v``, ``--version``
   |version chef|

``-V``, ``--verbose``
   |verbose|

``-y``, ``--yes``
   |yes|