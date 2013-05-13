.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The manner by which a data bag is encrypted depends on the version of |chef|. See the following:

.. image:: ../../images/essentials_data_bags_versions.png

where R is read, W is write, and D is disable.

For version 0 (default, through |chef| 10.18):

* An encrypted data bag is written using |json| as the serialization format
* Data is encrypted using a combination of |json|, |aes 256 cbc| (as defined by the ``openssl`` package in the |ruby standard library|), and |base64| encoding
* |chef| uses shared-key encryption; an encrypted file can only be decrypted by a node or a user with the same shared-key
* A recipe can load encrypted data as long as the shared secret is present in a file on the node or is accessible from a URI path
* Only the values of a data bag item are decrypted; keys are still searchable. The values associated with the ``id`` key of a data bag item are not encrypted (because they are needed by |chef| when tracking the data bag item)

For version 1 (default, starting with |chef| 11.x):

* An encrypted data bag is written using |yaml| as the serialization format
* Data is encrypted using a combination of |yaml|, |aes 256 cbc| (as defined by the ``openssl`` package in the |ruby standard library|), and |base64| encoding. This allows a data bag to store confidential information (such as a database password) or to be managed in a source control system (without plain-text data appearing in revision history)
* A data bag item is encrypted using a random initialization vector each time a value is encrypted, which helps protect against some forms of cryptanalysis
* |chef| uses shared-key encryption; an encrypted file can only be decrypted by a node or a user with the same shared-key
* A recipe can load encrypted data as long as the shared secret is present in a file on the node or is accessible from a URI path
* Only the values of a data bag item are decrypted; keys are still searchable. The values associated with the ``id`` key of a data bag item are not encrypted (because they are needed by |chef| when tracking the data bag item)

For version 2 (default, starting with |chef| 11.6):

* Same as version 1
* Can disable version 0 and version 1 data bag encryption formats

