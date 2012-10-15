=====================================================
Knife Command Line Reference
=====================================================
 
.. include:: ../../swaps/swap_descriptions.txt
.. include:: ../../swaps/swap_names.txt


.. include:: ../../includes_knife/includes_knife.rst


Working with Knife
=====================================================
|knife| runs from a management workstation and sits in-between a |chef server| and an organization's infrastructure. |knife| interacts with a |chef server| by using the same REST API that is used by a |chef client|. Role-based authentication controls (RBAC) can be used to authorize changes when |knife| is run with |chef hosted| or |chef private|. |knife| is configured during workstation setup, but subsequent modifications can be made using the |knife rb| configuration file.

JSON Data Format
-----------------------------------------------------
Most data is entered using a text editor in |json| format, unless the ``--disable-editing`` option is entered as part of a command. (Encrypted data bags use |yaml|, which is a superset of |json|.) |json| is a common, language-independent data format that provides a simple text representation of arbitrary data structures. For more information about JSON, see http://www.json.org/ or http://en.wikipedia.org/wiki/JSON.

Using Quotes
-----------------------------------------------------
Values can be entered with double quotes (" ") or single quotes (' '), but this should be done consistently.

Sub-commands
-----------------------------------------------------
|knife| comes with a collection of built in sub-commands that work together to provide all of the functionality required to take specific actions against any object in a |chef| environment, including cookbooks, nodes, roles, data bags, and environments. A |knife| plugin extends the functionality beyond built-in sub-commands.

|knife| has the following sub-commands: ``bootstrap``, ``client``, ``configure``, ``cookbook``, ``cookbook site``, ``data bag``, ``environment``, ``exec``, ``index rebuild``, ``node``, ``recipe list``, ``role``, ``search``, ``ssh``, ``status``, and ``tag``.

|opscode| provides the following plug-ins, which work the same as built-in sub-commands (including common options), but must be installed separately (using |rubygems|): ``azure``, ``bluebox``, ``ec2``, ``eucalyptus``, ``google``, ``hp``, ``linode``, ``openstack``, ``rackspace``, ``slicehost``, ``terremark``, and ``windows``.

.. note:: The following sub-command runs only against the |chef open server|: ``index rebuild``.

The |chef| community provides many other plugins for |knife|: http://community.opscode.com/.

Syntax
-----------------------------------------------------
All |knife| sub-commands have the following syntax::

   knife subcommand [ARGUMENT] (options)

Each sub-command has its own set of arguments and options.

.. note:: All syntax examples in this document show variables in ALL_CAPS. For example ``-u PORT_LIST`` (where PORT_LIST is a comma-separated list of local and public UDP ports) or ``-F FORMAT`` (where FORMAT determines the output format, either ``summary``, ``text``, ``json``, ``yaml``, or ``pp``). These variables often require specific values that are unique to your organization's |chef| environment.

Common Options
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_common_options.rst


bootstrap
=====================================================

.. include:: ../../includes/includes_chef_bootstrap.rst

.. include:: ../../includes_knife/includes_knife_bootstrap.rst


client
=====================================================

.. include:: ../../includes_knife/includes_knife_client.rst
   
bulk delete
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_client_bulk_delete.rst

create
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_client_create.rst

delete
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_client_delete.rst

edit
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_client_edit.rst

list
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_client_list.rst

reregister
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_client_reregister.rst

show
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_client_show.rst


configure
=====================================================
.. include:: ../../includes_knife/includes_knife_configure.rst


cookbook
=====================================================

.. include:: ../../includes/includes_chef_cookbook.rst

.. include:: ../../includes_knife/includes_knife_cookbook.rst

bulk delete
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_cookbook_bulk_delete.rst

create
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_cookbook_create.rst

delete
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_cookbook_delete.rst

download
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_cookbook_download.rst

list
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_cookbook_list.rst

metadata
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_cookbook_metadata.rst

metadata from file
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_cookbook_metadata_from_file.rst

show
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_cookbook_show.rst

test
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_cookbook_test.rst

upload
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_cookbook_upload.rst


cookbook site
=====================================================

.. include:: ../../includes/includes_api_cookbooks_site.rst

.. include:: ../../includes_knife/includes_knife_site_cookbook.rst

download
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_site_cookbook_download.rst

install
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_site_cookbook_install.rst

list
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_site_cookbook_list.rst

search
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_site_cookbook_search.rst

share
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_site_cookbook_share.rst

show
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_site_cookbook_show.rst

unshare
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_site_cookbook_unshare.rst


data bag
=====================================================

.. include:: ../../includes/includes_chef_data_bag.rst

.. include:: ../../includes_knife/includes_knife_data_bag.rst

create
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_data_bag_create.rst

delete
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_data_bag_delete.rst

edit
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_data_bag_edit.rst

from file
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_data_bag_from_file.rst

list
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_data_bag_list.rst

show
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_data_bag_show.rst


environment
=====================================================

.. include:: ../../includes/includes_chef_environment.rst

.. include:: ../../includes_knife/includes_knife_environment.rst

create
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_environment_create.rst

delete
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_environment_delete.rst

edit
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_environment_edit.rst

from file
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_environment_from_file.rst

list
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_environment_list.rst
   
show
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_environment_show.rst


exec
=====================================================
.. include:: ../../includes_knife/includes_knife_exec.rst


index rebuild
=====================================================
.. include:: ../../includes_knife/includes_knife_index_rebuild.rst


node
=====================================================

.. include:: ../../includes/includes_chef_node.rst

.. include:: ../../includes_knife/includes_knife_node.rst

bulk delete
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_node_bulk_delete.rst

create
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_node_create.rst

delete
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_node_delete.rst

edit
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_node_edit.rst

from file
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_node_from_file.rst

list
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_node_list.rst

run_list add
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_node_run_list_add.rst

run_list remove
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_node_run_list_remove.rst

show
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_node_show.rst


recipe list
=====================================================

.. include:: ../../includes_knife/includes_knife_recipe_list.rst


role
=====================================================

.. include:: ../../includes/includes_chef_role.rst

.. include:: ../../includes_knife/includes_knife_role.rst

bulk delete
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_role_bulk_delete.rst
   
create
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_role_create.rst
   
delete
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_role_delete.rst

edit
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_role_edit.rst

from file
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_role_from_file.rst

list
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_role_list.rst

show
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_role_show.rst


search
=====================================================

.. include:: ../../includes/includes_chef_search.rst

.. include:: ../../includes_knife/includes_knife_search.rst


ssh
=====================================================
.. include:: ../../includes_knife/includes_knife_ssh.rst


status
=====================================================
.. include:: ../../includes_knife/includes_knife_status.rst


tag
=====================================================

.. include:: ../../includes/includes_chef_tags.rst

.. include:: ../../includes_knife/includes_knife_tag.rst

create
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_tag_create.rst

delete
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_tag_delete.rst

list
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_tag_list.rst


|knife| Essentials
=====================================================

.. include:: ../../includes_knife/includes_knife_essentials.rst

Common Options
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_common_options.rst

Wildcard Matching
-----------------------------------------------------
.. include:: ../../includes/includes_chef_search_pattern_wildcard.rst

delete
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_essentials_delete.rst

diff
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_essentials_diff.rst

download
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_essentials_download.rst

list
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_essentials_list.rst

raw
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_essentials_raw.rst

show
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_essentials_show.rst

upload
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_essentials_upload.rst




Plugins
=====================================================

The following plugins for |knife| are provided by |opscode|:

* azure
* bluebox
* ec2
* eucalyptus
* google
* hp
* linode
* openstack
* rackspace
* rackspace
* terremark
* windows


azure (plug-in)
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_azure.rst

Common Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_common_options.rst

image list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_azure_image_list.rst

server create
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_azure_server_create.rst

server delete
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_azure_server_delete.rst

server describe
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_azure_server_describe.rst

server list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_azure_server_list.rst


bluebox (plug-in)
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_bluebox.rst

images list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_bluebox_images_list.rst

server create
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_bluebox_server_create.rst

server delete
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_bluebox_server_delete.rst

server list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_bluebox_server_list.rst


ec2 (plug-in)
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_ec2.rst

instance data
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_ec2_instance_data.rst

server create
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_ec2_server_create.rst

server delete
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_ec2_server_delete.rst

server list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_ec2_server_list.rst


eucalyptus (plug-in)
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_eucalyptus.rst

flavor list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_eucalyptus_flavor_list.rst

image list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_eucalyptus_image_list.rst

server create
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_eucalyptus_server_create.rst

server delete
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_eucalyptus_server_delete.rst

server list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_eucalyptus_server_list.rst


google (plug-in)
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_google.rst

server create
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_google_server_create.rst

server delete
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_google_server_delete.rst

server list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_google_server_list.rst


hp (plug-in)
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_hp.rst

flavor list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_hp_flavor_list.rst

image list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_hp_image_list.rst

server create
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_hp_server_create.rst

server delete
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_hp_server_delete.rst

server list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_hp_server_list.rst


linode (plug-in)
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_linode.rst

datacenter list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_linode_datacenter_list.rst

flavor list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_linode_flavor_list.rst

image list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_linode_image_list.rst

kernel list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_linode_kernel_list.rst

server create
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_linode_server_create.rst

server delete
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_linode_server_delete.rst

server list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_linode_server_list.rst

server reboot
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_linode_server_reboot.rst

stackscript list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_linode_stackscript_list.rst


openstack (plug-in)
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_openstack.rst

flavor list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_openstack_flavor_list.rst

image list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_openstack_image_list.rst

server create
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_openstack_server_create.rst

server delete
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_openstack_server_delete.rst

server list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_openstack_server_list.rst


rackspace (plug-in)
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_rackspace.rst

flavor list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_rackspace_flavor_list.rst

image list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_rackspace_image_list.rst

server create
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_rackspace_server_create.rst

server delete
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_rackspace_server_delete.rst

server list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_rackspace_server_list.rst


terremark (plug-in)
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_terremark.rst

server create
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_terremark_server_create.rst

server delete
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_terremark_server_delete.rst

server list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_terremark_server_list.rst


windows (plug-in)
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_windows.rst

bootstrap windows ssh
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_windows_bootstrap_windows_ssh.rst

bootstrap windows winrm
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_windows_bootstrap_windows_winrm.rst

winrm
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_windows_winrm.rst