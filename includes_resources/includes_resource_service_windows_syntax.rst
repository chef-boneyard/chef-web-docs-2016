.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A |resource service_windows| resource block manages the state of a service on a machine that is running |windows|. For example:

.. code-block:: ruby

   windows_service 'BITS' do
     action :configure_startup
     startup_type :manual
   end

The full syntax for all of the attributes that are available to the |resource service_windows| resource is:

.. code-block:: ruby

   windows_service 'name' do
     init_command               String
     notifies                   # see description
     pattern                    String
     provider                   Chef::Provider::Service::Windows
     reload_command             String
     restart_command            String
     run_as_password            String
     run_as_user                String
     service_name               String # defaults to 'name' if not specified
     start_command              String
     startup_type               Symbol
     status_command             String
     stop_command               String
     subscribes                 # see description
     supports                   Hash
     timeout                    Integer
     action                     Symbol # defaults to :nothing if not specified
   end

where 

* ``windows_service`` is the resource
* ``name`` is the name of the resource block
* ``:action`` identifies the steps the |chef client| will take to bring the node into the desired state
* ``init_command``, ``pattern``, ``provider``, ``reload_command``, ``restart_command``, ``run_as_password``, ``run_as_user``, ``service_name``, ``start_command``, ``startup_type``, ``status_command``, ``stop_command``, ``supports``, and ``timeout`` are attributes of this resource, with the |ruby| type shown. |see attributes|
