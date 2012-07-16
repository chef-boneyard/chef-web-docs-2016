.. This is an included file that describes a sub-command or argument in Knife.


The ``list`` argument is used to view a list of cookbooks that are currently available at |url cookbook|. 

This argument has the following syntax::

   knife cookbook site list

This argument has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``-w``, ``--with-uri``
     - |with-uri|

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
