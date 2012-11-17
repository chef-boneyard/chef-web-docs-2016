.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The contents of a data bag can be encrypted.

* An encrypted data bag is always written using |json| as the serialization format. |chef| and |knife| support reading encrypted data bag items in both |json| (default) and |yaml| (backup).
* Data is encrypted using a combination of |json|, |aes 256 cbc| (as defined by the ``openssl`` package in the |ruby standard library|), and |base64| encoding. This allows a data bag to store confidential information (such as a database password) or to be managed in a source control system (without plain-text data appearing in revision history).
* The system uses shared-key encryption. An encrypted file can only be decrypted by a node or a user with the same shared-key. Only designated nodes are able to decrypt values stored in an encrypted data bag. 
* A recipe can load encrypted data as long as the shared secret is present in a file on the node or is accessible from a URI path. 
* Only the values of a data bag item are decrypted; keys are still searchable. The values associated with the ``id`` key of a data bag item are not encrypted (because they are needed by |chef| when tracking the data bag item).



