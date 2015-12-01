.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


See chef_master/proxies.rst for now. Writing there first, then refactor back to here, then use includes to get this information into other specific areas of the docs. 

This working PR:

https://github.com/chef/chef-web-docs/pull/764

See this list for potential locations:

- https://docs.chef.io/quick_start.html - Troubleshooting box for people who have proxy issues
- https://docs.chef.io/chef_system_requirements.html - a note about proxies under the “access to the Chef server” bit
- https://docs.chef.io/install_dk.html - prerequisites here should talk about proxy config
- Left Navbar: Setup & Config > Chef Client > Proxies
- https://docs.chef.io/knife_using.html - link to proxy configuration
- https://docs.chef.io/ctl_chef.html
- https://docs.chef.io/ctl_chef_apply.html
- https://docs.chef.io/ctl_chef_client.html
- https://docs.chef.io/ctl_chef_shell.html
- https://docs.chef.io/ctl_ohai.html