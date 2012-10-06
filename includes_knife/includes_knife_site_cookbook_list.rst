.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``list`` argument is used to view a list of cookbooks that are currently available at |url cookbook|. 

This argument has the following syntax::

   knife cookbook site list

This argument has the following options:

``-c CONFIG``, ``--config CONFIG``
   |config|

``--color``
   |color|

``--defaults``
   |defaults|

``-e EDITOR``, ``--editor EDITOR``
   |editor|

``-E ENVIRONMENT``, ``--environment ENVIRONMENT``
   |environment|

``-F FORMAT``, ``--format FORMAT``
   |format|

``-h``, ``--help``
   |help|

``-k KEY``, ``--key KEY``
   |key|

``--no-color``
   |no-color|

``-n``, ``--disable-editing``
   |no-editor|

``--print-after``
   |print-after|

``-s URL``, ``--server-url URL``
   |server-url|

``-u USER``, ``--user USER``
   |user|

``-v``, ``--version``
   |version chef|

``-V``, ``--verbose``
   |verbose|

``-w``, ``--with-uri``
   |with-uri|

``-y``, ``--yes``
   |yes|

For example, to view a list of cookbooks at |url cookbook| server, enter:

.. code-block:: bash

   $ knife cookbook site list

to return::

   1password             homesick              rabbitmq
   7-zip                 hostname              rabbitmq-management
   AmazonEC2Tag          hosts                 rabbitmq_chef
   R                     hosts-awareness       rackspaceknife
   accounts              htop                  radiant
   ack-grep              hudson                rails
   activemq              icinga                rails_enterprise
   ad                    id3lib                redis-package
   ad-likewise           iftop                 redis2
   ant                   iis                   redmine
   [...truncated...]
