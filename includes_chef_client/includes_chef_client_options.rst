.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This command has the following syntax::

   chef-client OPTION VALUE OPTION VALUE ...

This sub-command has the following options:

``-c CONFIG``, ``--config CONFIG``
   |config chef-client|               

``-d``, ``--daemonize``
   |daemonize| This option is only available on machines that run in |unix| or |linux| environments. For machines that are running |windows| that require similar functionality, use the ``chef-client::service`` recipe in the ``chef-client`` cookbook: http://community.opscode.com/cookbooks/chef-client. This will install a |chef client| service under |windows| using the |windows service wrapper|.

``-E ENVIRONMENT_NAME``, ``--environment ENVIRONMENT_NAME``
   |environment chef-client|            

``-g GROUP``, ``--group GROUP``
   |group chef-client|        

``-h``, ``--help``
   |help chef-client|

``-i SECONDS``, ``--interval SECONDS``
   |interval|

``-j JSON_ATTRIBS``, ``--json-attributes JSON_ATTRIBS``
   |json_attribs|

``-k KEY_FILE``, ``--client-key KEY_FILE``
   |client_key|

``-K KEY_FILE``, ``--validation_key KEY_FILE``
   |validation_key|

``-l LEVEL``, ``--log_level LEVEL``
   |log_level|

``-L LOGLOCATION``, ``--logfile c``
   |log_location| This is recommended when starting any executable as a daemon.

``-N NODE_NAME``, ``--node-name NODE_NAME``
   |node name chef-client|                   

``--once``
   |once|

``-o RUN_LIST_ITEM``, ``--override-runlist RUN_LIST_ITEM``
   Replace current run list with specified items              

``-P PID_FILE``, ``--pid PID_FILE``
   |pid_file|            

``-s SECONDS``, ``--splay SECONDS``
   |splay|                  

``-S CHEF_SERVER_URL``, ``--server CHEF_SERVER_URL``
   |chef_server_url|  

``-u USER``, ``--user USER``
   |user chef-client|    

``-v``, ``--version``
   |version chef|                    


A |chef client| that is running as a daemon can be woken up and started by sending the process a ``SIGUSR1``. For example, to trigger a |chef| run on a machine running |linux|:

.. code-block:: bash

   $ sudo killall -USR1 chef-client


To find the process manually, and then start a |chef| run, enter something like:

.. code-block:: bash

   $ ps auxw|grep chef-client

to return something like:

.. code-block:: bash

   root           66066   0.9  0.0  2488880    264 s001  S+   10:26AM   0:03.05
   /System/Library/Frameworks/Ruby.framework/Versions/1.8/usr/bin/ruby /usr/bin/chef-client -i 3600 -s 20

and then enter:

.. code-block:: bash

   $ sudo kill -USR1 66066



