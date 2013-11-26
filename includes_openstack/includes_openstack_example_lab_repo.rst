.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Everything in the lab is managed by |chef| from the http://github.com/mattray/lab-repo repository. The operating systems for the machines are provisioned by the `pxe_dust <http://ckbk.it/pxe_dust>`_ cookbook, which uses a preseed file to put a minimal operating system in place via PXE. These machines are frequently re-installed and the process takes about 10 minutes.

