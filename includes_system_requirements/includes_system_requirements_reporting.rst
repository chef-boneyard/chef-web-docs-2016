.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|reporting| has the following requirements:

* |chef server| 12
* |chef server oec| version 11.0.1 (or later)
* |chef server oec| 11.1.7 (and earlier) should use |reporting| 1.1.2 (or earlier); |chef server oec| 11.1.8 should use |reporting| 1.1.5 (and later)
* |chef client| version 11.6.0 (or later), with the exception of |chef client| version 11.8.0

The |reporting| client is built into the |chef client| and can run on all platforms that |chef client| is supported on.

.. warning:: |reporting| does not work on |chef client| version 11.8.0; upgrade to |chef client| version 11.8.2 (or later) if |reporting| is being run in your organization.

.. warning:: |reporting| requires version 1.0.1 (or later) when the |chef server oec| is run in a high availability configuration.
