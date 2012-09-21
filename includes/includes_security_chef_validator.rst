.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


When a node runs chef-client for the first time, it generally does not yet have an API client identity, and so cannot make authenticated requests to the server. This is where the validation client—named "chef-validator" by default comes in. When the chef-client runs, it checks if it has a client key. If the client key does not exist, it then attempts to "borrow" the validation client's identity to register itself with the server. In order to do that, the validation client's private key needs to be copied to the host and placed in /etc/chef/validation.pem. Once the client machine has registered itself with the chef server, it no longer uses the validation client for anything. It is recommended that you delete the validation client's private key from the host after the host has registered.
