.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This updates the |chef server| and creates the ``/etc/opscode-manage/secrets.rb`` file. When sticky sessions between |chef manage| and the |chef server| are required, copy the ``secrets.rb`` file in the ``/etc/opscode-manage`` directory on the backend |chef server| machine to the same directory on each of the frontend |chef server| machines.