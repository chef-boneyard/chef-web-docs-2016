.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

In a Tiered topology, your |chef private| environment will run on multiple servers, but the back-end datastore layer will live on a single host. No highly available data storage is provided on the back-end host, though the front-end layer can be scaled horizontally. This topology may be of interest for environments that wish to provide their own methods for backup and data redundancy.

|company_name| recommends that most environments considering a Tiered topology should consider using the High Availability topology for data redundancy, which is supported by |company_name| Support.
