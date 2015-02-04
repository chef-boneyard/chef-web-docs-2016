.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

We realize that many of our customers have production environments that provide support for highly available external storage systems. There are a number of such systems available commercially, and providing extensive customer support for |chef private| on all of them is outside our scope.

If your team decides that your |chef private| back-end must be attached to external storage, please let your |company_name| sales representative know as early as possible, and notify your installation consultant if one has been assigned.

The tooling provided with |chef private| and |private chef ctl| will not be modified to be made aware of your environment, which means that the automatic failover of your system will become a manual process or otherwise automated by your team. Such modifications should be carefully documented, as any upgrade process to future versions of |chef private| will need to include those changes. It is not recommended that you make extensive modifications to the software delivered in ``/opt/opscode``.
