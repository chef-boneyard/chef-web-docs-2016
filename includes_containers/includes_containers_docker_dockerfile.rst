.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A |dockerfile| contains all of the settings needed to use a container with |chef|. The following |dockerfile| settings are required:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Setting
     - Description
   * - ``ADD <src> <dest>``
     - The path to the location from which files are copied (``<src>``) and the location in the container's file system (``<dest>``) to which those same files will be added. Default value: ``chef/ /etc/chef/``.
   * - ``CMD``
     - Use to specify additional parameters to ``ENTRYPOINT``. Default value: ``--onboot``.
   * - ``ENTRYPOINT``
     - Use to specify that a container be run as an executable. This setting may appear only once in a |dockerfile|. Default value: ``["chef-init"]``, which will run the container as the |chef client|.
   * - ``FROM``
     - The image from which a container will be built. This must be the first setting in a |dockerfile|. Default value: ``chef/ubuntu_12.04``.
   * - ``RUN``
     - A command to be run inside the container. There may be more than one command specified. Default value: ``chef-init --bootstrap``.

For more information about these settings, plus the full list of settings available to a |dockerfile|, see http://docs.docker.io/reference/builder/.





