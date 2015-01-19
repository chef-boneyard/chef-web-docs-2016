.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A control is an automated test that is built into a cookbook, and then used to test the state of the system for compliance. Compliance could be as simple as ensuring that file and directory management meets specific internal IT policies. And it could be as complex as meeting requirements that are driven by large-scale compliance frameworks such as |pci|, |hipaa|, and |sarbanes oxley|.

Use the ``control_group`` and ``control`` methods in the |dsl recipe| to define automated tests within cookbooks. These tests are processed during the |chef client| run and the results are sent to the |chef server| at the end of the |chef client| run. Some of this data ends up as |reporting| data an the rest is routed to the |chef analytics| server. The |chef analytics| server analyzes the compliance data by running rules against this data, generating notifications as required.
