.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|amazon aws| is a supported high availability configuration option for the |chef server|.

.. image:: ../../images/chef_server_ha_aws.svg
   :width: 600px
   :align: center

Machines are stored as |amazon ebs| volumes. A passive node monitors the availabilty of the active node, and will take over if required.

For more information about |amazon ebs|, see http://aws.amazon.com/ebs/.
