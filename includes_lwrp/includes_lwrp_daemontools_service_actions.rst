.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This lightweight resource provider has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:start``
     - Use to start a service. If the service stops, restart it. The following command is used: ``svc -u``.
   * - ``:stop``
     - Use to send the ``STOP`` signal to pause a service. The following command is used: ``svc -p``.
   * - ``:restart``
     - Use to restart a service using the ``TERM`` signal. The following command is used: ``svc -t``.
   * - ``:once``
     - Use to start a service. The service does not restart if it stops. The following command is used: ``svc -o``.
   * - ``:pause``
     - Use to pause a service.
   * - ``:cont``
     - Use to send the ``CONT`` signal. The following command is used: ``svc -c``.
   * - ``:hup``
     - Use to send the ``HUP`` signal. The following command is used: ``svc -h``.
   * - ``:alrm``
     - Use to send the ``ALRM`` signal. The following command is used: ``svc -a``.
   * - ``:int``
     - Use to send the ``INT`` signal. The following command is used: ``svc -i``.
   * - ``:term``
     - Use to send the ``TERM`` signal. The following command is used: ``svc -t``.
   * - ``:kill``
     - Use to send the ``KILL`` signal. The following command is used: ``svc -k``.
   * - ``:disable``
     - Use to disable a service by removing the link to the service directory.
   * - ``:enable``
     - Use to enable a service by setting up the service directory and link.
   * - ``:up``
     - Use to start a service. If the service stops, restart it. The following command is used: ``svc -u``.
