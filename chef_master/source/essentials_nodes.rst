===================================
Nodes
===================================

.. include:: ../../swaps/swap_descriptions.txt
.. include:: ../../swaps/swap_names.txt
.. include:: ../../swaps/swap_http.txt

.. include:: ../../includes/includes_chef_node.rst

.. include:: ../../includes/includes_chef_node_name.rst

.. include:: ../../includes/includes_chef_node_manage.rst

The following sections discuss these elements (and their various sub-components) in more detail:

* Cloud vs. Physical Nodes
* |chef client|
* The |chef| run
* Ohai

Cloud vs. Physical Nodes
=====================================================
.. include:: ../../includes/includes_chef_node_cloud.rst

.. include:: ../../includes/includes_chef_node_physical.rst


|chef client|
=====================================================
.. include:: ../../includes/includes_chef_client.rst

|ssl| Certificates
-----------------------------------------------------
.. include:: ../../includes/includes_chef_node_certificate.rst

**jamescott: someone needs to explain how the security works between the node and the server. I know it uses SSL and that signed headers + private/public keys are used. This (probably) needs to be excised from the Chef Essentials docs and moved into a Chef Security collection of topics. Or something.**

Signed Headers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_security_signed_header_authentication.rst

|chef validator|
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_security_chef_validator.rst


The |chef| Run
=====================================================
SEE INDEX_NEW. NEEDS UPDATING AND NEW DIAGRAM. IN JAMES' QUEUE.


|ohai|
=====================================================
.. include:: ../../includes/includes_ohai.rst

Automatic Attributes
-----------------------------------------------------
.. include:: ../../includes/includes_ohai_automatic_attribute.rst

|ohai| Attribute List
-----------------------------------------------------
The following attributes are those which are re-written with each Ohai run, so they should be recognized as being unmodifiable when considering the use of attributes:

.. code-block:: bash

   ohai$ grep -R "provides" -h lib/ohai/plugins|sed 's/^\s*//g'|sed "s/\\\"/\'/g"|sort|uniq|grep ^provides

Handlers
=====================================================
.. include:: ../../includes/includes_chef_handler.rst

Handler Properties
-----------------------------------------------------
.. include:: ../../includes/includes_chef_handler_properties.rst

Writing a Handler
-----------------------------------------------------
.. include:: ../../includes/includes_chef_handler_write.rst

Example: Send email when a |Chef| run fails
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_handler_write_example_send_email.rst

Installing and Configuring a Handler
-----------------------------------------------------
.. include:: ../../includes/includes_chef_handler_install.rst

|lwrp chef handler|
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_handler_install_from_cookbook.rst

Manual Install
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_handler_install_manual.rst

Distributing Handlers
-----------------------------------------------------
.. include:: ../../includes/includes_chef_handler_distribute.rst

Available Handlers
-----------------------------------------------------
.. include:: ../../includes/includes_chef_handler_available.rst

|opscode|: JsonFile Handler
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_handler_available_jsonfile.rst

Community: Open Source Handlers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_handler_available_community.rst