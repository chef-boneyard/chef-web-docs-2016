.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This updates the |chef server| and creates the ``/etc/opscode-manage/secrets.rb`` file. When running the |chef manage| 1.11 (or higher), copy the ``secrets.rb`` file in the ``/etc/opscode-manage`` directory on one of the frontend servers to the same directory on each of the other frontend servers, and rerun ``opscode-manage-ctl reconfigure`` so the copied ``/etc/opscode-manage/secrets.rb`` file gets used correctly.
