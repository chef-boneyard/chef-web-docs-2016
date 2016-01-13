.. THIS PAGE DOCUMENTS chef-client version 11.12

=====================================================
About Files
=====================================================

.. include:: ../../includes_resources/includes_resource_cookbook_file.rst

.. include:: ../../includes_resources/includes_resource_cookbook_file_transfers.rst

File Specificity
=====================================================
.. include:: ../../includes_file/includes_file_cookbook_specificity.rst

The pattern for file specificity depends on two things: the lookup path and the source attribute. The first pattern that matches is used:

#. /host-$fqdn/$source
#. /$platform-$platform_version/$source
#. /$platform/$source
#. /default/$source

.. include:: ../../includes_file/includes_file_cookbook_specificity_example.rst

Host Notation
=====================================================
.. include:: ../../includes_file/includes_file_cookbook_specificity_host_notation.rst
