.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


In an environment that requires proxies to reach the Internet, many |chef| commands will not work until they are configured correctly. To configure |chef| to work in an environment that requires proxies, set the ``http_proxy``, ``https_proxy``, and/or ``ftp_proxy`` environment variables to specify the proxy settings using a lowercase value.
