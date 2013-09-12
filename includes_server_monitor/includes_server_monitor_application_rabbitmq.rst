.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|rabbitmq ctl| is the management tool for |rabbitmq|. It can be used to obtain status information and to ensure that message queuing is running properly. For more information about |rabbitmq ctl|, see https://www.rabbitmq.com/man/rabbitmqctl.1.man.html.

To obtain status information for message queues, run the following command:

.. code-block:: bash

   $ cd /opt/opscode/embedded/service/rabbitmq/
     export PATH=$PATH:/opt/opscode/bin:/opt/opscode/embedded/bin
     bin/rabbitmqctl status

to return something similar to:

.. code-block:: bash

   Status of node rabbit@localhost ...
   [{pid,3044},
    {running_applications, [{rabbit,"RabbitMQ","2.7.1"},
                            {mnesia,"MNESIA CXC 138 12","4.7.1},
                            {os_mon,"CPO CXC 138 46","2.2.10},
                            ...
                            {kernel,"ERTS CXC 138 10","2.15.2"}]},
    {os,{unix,linux}},
    {erlang_version,"Erlang R15B02 (erts-5.9.2) [source] [64-bit] ..."},
    {memory,[{total,96955896},
             {processes,38634560},
             ...
             {ets,5850336}]},
    {vm_memory_high_watermark,0.39999999995176794},
    {vm_memory_limit,1658647347}]
    ... done
       