.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following settings are often modified from the default as part of the tuning effort for the |service nginx| service:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``nginx['ssl_ciphers']``
     - |ssl_ciphers| To favor AES256 with ECDHE forward security, drop the ``RC4-SHA:RC4-MD5:RC4:RSA`` prefix. For example:

       .. code-block:: ruby

          nginx['ssl_ciphers'] =  "HIGH:MEDIUM:!LOW:!kEDH:!aNULL:!ADH:!eNULL:!EXP:!SSLv2:!SEED:!CAMELLIA:!PSK"

   * - ``nginx['ssl_protocols']``
     - |version protocols_ssl| |ssl| 3.0 is supported by the |chef server|; however, |ssl| 3.0 is an obsolete and insecure protocol. Transport Layer Security (TLS)---TLS 1.0, TLS 1.1, and TLS 1.2---has effectively replaced |ssl| 3.0, which provides for authenticated version negotiation between the |chef client| and |chef server|, which ensures the latest version of the TLS protocol is used. For the highest possible security, it is recommended to disable |ssl| 3.0 and allow all versions of the TLS protocol.  For example:

       .. code-block:: ruby

          nginx['ssl_protocols'] = "TLSv1 TLSv1.1 TLSv1.2"

.. note:: See https://wiki.mozilla.org/Security/Server_Side_TLS#Recommended_Ciphersuite for more information about the values used with these settings.  