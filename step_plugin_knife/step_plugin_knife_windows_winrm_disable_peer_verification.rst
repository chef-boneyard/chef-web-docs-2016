.. This is an included how-to. 

.. add this, but don't include in the docs. save for in case it's needed someday.

To disable peer verification:

.. code-block:: bash

   $ knife winrm -m 192.168.0.6 -x 'mydomain\myuser' -P "$PASSWORDVAR" -t ssl --winrm-ssl-verify-mode verify_none ipconfig 

.. warning:: Use this option carefully. Disabling peer verification may allow the remote system's certificate to be a target of spoofing attacks.