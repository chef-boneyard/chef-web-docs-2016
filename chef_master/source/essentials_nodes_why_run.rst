=====================================================
why-run Mode
=====================================================

.. include:: ../../includes_chef_client/includes_chef_client_whyrun_mode.rst

.. include:: ../../includes_chef_client/includes_chef_client_whyrun_mode_assumptions.rst

For example, the |resource service| resource can be used to start a service. If the action is ``:start`` and the service is not running, then start the service (if it is not running) and do nothing (if it is running). What about a service that is installed from a package? |chef| cannot check to see if the service is running until after the package is installed. A simple question that |whyrun| mode can answer is what |chef| would say about the state of the service after installing the package because service actions often trigger notifications to other resources. So it can be important to know in advance that any notifications are being triggered correctly.



