.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


All hashing is done using |sha1| and encoded in |base64|. |base64| encoding should have line breaks every 60 characters.  Each canonical header should be encoded in the following format:

.. code-block:: bash

   Method:HTTP_METHOD\
   nHashedPath:HASHED_PATH\
   nX-Ops-Content-Hash:HASHED_BODY\
   nX-Ops-Timestamp:TIME\
   nX-Ops-UserId:USERID

where:

* ``HTTP_METHOD`` is the method used in the API request (``GET``, ``POST``, and so on)
* ``HASHED_PATH`` is the path of the request (``/name_of_endpoint`` for the open source |chef server| and ``/organizations/organization_name/name_of_endpoint`` for |chef hosted| or |chef private|). The ``HASHED_PATH`` must be hashed using |sha1| and encoded using |base64| and must not have repeated forward slashes (``/``) or end in a forward slash (unless the path is ``/``).
* The private key must be an RSA key in the SSL .pem file format. This signature is then broken into character strings (of not more than 60 characters per line) and placed in the header.

The |chef server| decrypts this header and ensures its content matches the content of the non-encrypted headers that were in the request. The timestamp of the message is checked to ensure the request was received within a reasonable amount of time. One approach generating the signed headers is to use `mixlib-authentication <https://github.com/opscode/mixlib-authentication>`_, which is a class-based header signing authentication object similar to the one used in |chef|. 
