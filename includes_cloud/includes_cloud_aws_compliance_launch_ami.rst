.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


To get a fully-functional |amazon ami| for |chef compliance|, do the following:

#. Login to the `AWS Marketplace <https://aws.amazon.com/marketplace>`__ using your |amazon aws| account credentials
#. `Choose an AMI <https://aws.amazon.com/marketplace/seller-profile/ref=dtl_pcp_sold_by?ie=UTF8&id=e7b7691e-634a-4d35-b729-a8b576175e8c>`__ based on the number of nodes to be under management by |chef|.
#. Configure the region, the |amazon ec2| instance type, |amazon vpc| settings, security group, and the SSH key pair.
#. Assign the |chef compliance| server `a public IP address <http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-instance-addressing.html#concepts-public-addresses>`__.
#. Launch the |amazon ami|.
