.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |chef server| can operate in a high availability configuration that provides automated load balancing and failover for stateful components in the system architecture. This type of configuration typically splits the servers into two segments: front-end and back-end machines: 

.. image:: ../../images/chef_server_ha.svg
   :width: 600px
   :align: center

Front-end machines handle requests to the |api chef server| and access to the web user interface. Front-end machines should be load balanced and scaled horizontally by increasing the number of servers available to handle requests.

Back-end machines handle data storage and retrieval, messaging and routing, analytics processing, and search. Back-end machines should be configured for failover using block level replication.
