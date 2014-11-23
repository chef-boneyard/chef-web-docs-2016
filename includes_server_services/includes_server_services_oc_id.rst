.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |service ocid| service enables |oauth| 2.0 authentication to the |chef server| by external applications, including |supermarket| and |chef analytics|. |oauth| 2.0 uses token-based authentication, where external applications use tokens that are issued by the |service ocid| provider. No special credentials---``webui_priv.pem`` or privileged keys---are stored on the external application.