.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|description resource_attributes_intro|

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``blocking``
     - Indicates whether a file should be downloaded in a single |chef client| run. If ``false``, the download may take place across one (or more) |chef client| runs.
   * - ``continue_seeding``
     - Indicates whether a file should continue to be seeded to the |bittorrent| swarm after download.
   * - ``group``
     - A string or ID that identifies the group owner of a file.
   * - ``owner``
     - The owner of a file.
   * - ``path``
     - The path to the torrent file.
   * - ``rpc_host``
     - The address for the host to which a |bittorrent| transmission connection is made. Default value: ``localhost``.
   * - ``rpc_password``
     - The password for the |bittorrent| transmission account. This is often ``node['transmission']['rpc_password']``, which by default is a secure password generated for the node.
   * - ``rpc_port``
     - The port for the host to which a |bittorrent| transmission connection is made. Default value: ``9091``.
   * - ``rpc_username``
     - The user name for the |bittorrent| transmission account.
   * - ``torrent``
     - A URI or a local path that specifies a file in a |bittorrent| swarm that will be joined.

