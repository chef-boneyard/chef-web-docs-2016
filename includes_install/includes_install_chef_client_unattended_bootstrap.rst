.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets. 

The |chef client| can be installed using an unattended bootstrap. For example, machines are often created using environments like |amazon aws autoscaling|, |amazon aws cloudformation|, |rackspace autoscale|, and |pxe|. In this scenario, using tooling for attended, single-machine installs like ``knife bootstrap`` or ``knife CLOUD_PLUGIN create`` is not practical because the machines are created automatically and someone cannot always be on-hand to initiate the bootstrap process.

When the |chef client| is installed using an unattended bootstrap, remember that the |chef client|:

* Must be able to authenticate to the |chef server|
* Must be able to configure a run-list
* May require custom attributes, depending on the cookbooks that are being used
* Must be able to access the |chef validator pem| so that it may create a new identity on the |chef server|
* Must have a unique node name; the |chef client| will use the |fqdn| for the host system by default

When the |chef client| is installed using an unattended bootstrap, it is typically built into an image that starts the |chef client| on boot. The type of image used depends on the platform on which the unattended bootstrap will take place.

Use settings in the :doc:`client.rb file </config_rb_client>`---``chef_server_url``, ``http_proxy``, and other connection details---to ensure that configuration details are built into the unattended bootstrap process.
