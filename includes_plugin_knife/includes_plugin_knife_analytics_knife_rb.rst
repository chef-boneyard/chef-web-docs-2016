.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The |knife rb| file may be configured for the URL for |chef analytics|. Add the following setting to the |knife rb| file:

.. code-block:: ruby

   analytics_server_url 'https://ANALYTICS_URL/organizations/ORG_NAME'

For example:

.. code-block:: ruby

   analytics_server_url 'https://ec2-52-27-166-146.us-west-2.compute.amazonaws.com/organizations/learnchef'
