.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Configuring Private Chef
Configuration of Private Chef is done through the /etc/opscode/private-chef.rb file. The file itself is written in Ruby, allowing you to have as much flexibility as possible with how you configure the system.

While there are a great deal of configuration options, the number required for common use is quite small. For standalone single server configurations no configuration is required at all - the defaults take care of everything.

A typical High Availability or Tiered configuration consists of only:

A topology
A number of server entries
An api_fqdn entry
A backend_vip entry
A notification_email
See the tiered and high-availability installation documentation for complete configuration examples.

Applying configuration changes
The private-chef-ctl reconfigure command reads your /etc/opscode/private-chef.rb file and configures all of the services for you. Any time you make a change to your configuration, you need to run private-chef-ctl reconfigure to apply it.

Common Options
topology
Private Chef configurations are governed by a topology, which describes which of our recommended architectures you plan to install. Your choices are:

Default Value:

"standalone"
Options:

standalone (default): All of Private Chef running on a single server.
manual: Identical to standalone.
tier: Many front-end servers to a single, non-high-availability back-end server.
ha: Many front-end servers to a high-availability back-end cluster.
Example:

topology "standalone"
topology "manual"
topology "tier"
topology "ha"
notification_email
Private Chef generates notification emails from internal monitoring and periodic cron jobs. This is the email address they will be sent to.

Default Value: pc-default@opscode.com

Example:

notification_email "sysadmin@example.com"
from_email
Private Chef sends emails for such things as password resets and organization invites. This is the email address that will be used as the originating address for these messages.

Note that this does not apply to notification emails - those will be sent using the defaults configured for the MTA of the server originating the email.

Default Value: donotreply@opscode.com

Example:

from_email '"Chef" <opscode-chef@example.com>'
server
Server entries represent an individual server in your Private Chef cluster. Each server has at least an ipaddress and role, and can optionally be marked to run the bootstrap process.

When topology is “ha”, servers with role of “backend” may be configured with a cluster_ipaddress. This address will be used for replication and communication between the back-end servers. If cluster_ipaddress is not provided, ipaddress will be used instead.

Example:

For a back-end server, marked to run the initial bootstrap:

server "be1.example.com",
 :ipaddress => "192.168.4.1",
 :role => "backend",
 :bootstrap => true,
 :cluster_ipaddress => "10.1.2.10"
For a back-end server, not marked to run the bootstrap:

server "be2.example.com",
 :ipaddress => "192.168.4.6",
 :role => "backend",
 :cluster_ipaddress => "10.1.2.12"
A front-end server:

server "fe1.example.com",
 :ipaddress => "192.168.4.2",
 :role => "fronted"
api_fqdn
In a tiered or high availability scenario, you are expected to be running multiple front-end servers. The api_fqdn should point to the fully qualified domain name that you want to use for accessing the Web UI and API.

Example:

In the below example, you would access your Private Chef server at chef.example.com.

api_fqdn "chef.example.com"
backend_vip
When operating in a tiered or high-availability scenario, you need to configure the backend_vip. In a High Availability setup, this should be set to the fully qualified domain name and IP address you will be sharing between your back-end servers. In a Tiered configuration, it should point directly to your back-end server.

Example:

backend_vip "be.example.com",
 :ipaddress => "192.168.4.7"




CHECK THE DOCS FOR THE OTHER 90% OF THIS.


