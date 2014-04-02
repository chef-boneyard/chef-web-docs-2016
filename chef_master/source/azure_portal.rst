=====================================================
Microsoft Azure Portal
=====================================================

|azure| is a cloud hosting platform from |microsoft| that provides virtual machines. The |azure portal| (https://manage.windowsazure.com/) can boostrap |windows|-based virtual machines that are already provisioned with the |chef client| running as a background service. Once provisioned, these virtual machines are ready to be managed by |chef|.

To use the |chef| integration with the |azure portal|, all you need is a |chef server|. If you don’t already have one, hosted |chef server oec| is the fastest way to get up and running. The on-premises |chef server oec| and |chef server osc| servers will also work. See http://www.getchef.com/chef/choose-your-version/ for more information on how to choose the |chef server| that is right for your organization.

.. note:: Virtual machines running on |azure| can also be provisioned from the command-line using the |subcommand knife azure| plugin for |knife|. This approach is ideal for cases that require automation or for users who are more suited to command-line interfaces.

Before you create virtual machines from the |azure portal|, you will need to supply the following information to the |azure portal| during the virtual machine creation workflow. This information is available from |chef|:

#. The ``chef_server_url`` and ``validaton_client_name``. These are settings in the |client rb| file (http://docs.opscode.com/config_rb_client.html).

#. Your validator key file (http://docs.opscode.com/chef_private_keys.html).

Once this information has been identified, launch the |azure portal|, start the virtual machine creation workflow, and bootstrap virtual machines with |chef|:

#. Sign in to |azure| at https://manage.windowsazure.com. Authenticate using your |azure| account credentials.

#. Choose **Virtual Machines** in the left pane of the portal.

#. Click the **New** option at the bottom of the portal.

#. Choose **Virtual Machine**, and then **From Gallery**.

#. Choose one of the following **Featured Images** (currently only |windows| images are supported): ``Windows Server 2012 R2 Datacenter``, ``Windows Server 2012 Datacenter``, or ``Windows Server 2008 R2 SP1``.

#. Fill in the virtual machine configuration information, such as machine name, user name, and so on. When finished, click to the next page.

   .. note:: It’s best to use a new computer name each time through this workflow to avoid conflicts with virtual machines that may have been previously registered on your |chef server|.

#. Make desired changes, if any, to the cloud service name, storage account, endpoints, etc., and click to the next page

#. Install |chef|. Click the checkbox next to **Chef** and you’ll get options to configure your new virtual machines using with |chef|: 

   .. image:: ../../images/azure_portal.png
 
#. Click the **From Local** button next to the |client rb| text box and browse to upload your |client rb|.

   .. note:: The |client rb| must be correctly configured to communicate to the |chef server|. Specifically, it must have valid values for the following two settings: ``chef_server_url`` and ``validaton_client_name``.

#. Use the **From Local** button next to the validation key text box to locate your local copy of the validation key. 

#. Optional. Specify a run-list (http://docs.opscode.com/essentials_node_object_run_lists.html). The run-list will allow you to specify specific configuration that should be run when the virtual machine is provisioned – you could tell it to run the IIS cookbook, for example, so that when the virtual machine is done provisioning IIS is installed. If you’re not sure about initial configuration or don’t have one, this step is optional – even with no run-list, the virtual machine will periodically check for new configuration from the |chef server|, so you can update the run-list later using the |chef server| Web UI or |knife| command line tool. The run-list can only refer to roles or recipes that have already been uploaded to the |chef server|.

   For example, to run the |cookbook iis| cookbook’s default recipe which installs |microsoft iis|, any of the following would work:
   
   .. code-block:: ruby
   
      iis
   
   or:
   
   .. code-block:: ruby
   
      iis::default
   
   or:
   
   .. code-block:: ruby
   
      recipe[‘iis’]

   To run a role named ``backend_server``, which has been defined on the |chef server|:
   
   .. code-block:: ruby
   
      role[‘backend_server’]

#. Click the checkmark button to complete the page. Provisioning will start and you will be returned to the **Virtual Machines** page with a list of your virtual machines. You can monitor the provisioning status from this page.

   When the virtual machine has reached the status **starting**, you can click the virtual machine name to go to a page that contains more detail. Click **dashboard** to see more detailed status, and scroll down to the area that says **extensions**

   Once the VM has gone far enough in the “running(provisioning” state, some entries should appear under status, like this:

#. Once it is finished, you should see something like the following:

 

After the process is complete, your virtual machine will be registered with the |chef server| and it will have been provisioned with configuration (applications, services, etc.) from any run-list you supplied. You can now use the |chef server| to perform all ongoing management of that node with the |chef manage| web user interface or the |knife| command line interfaces. 


For more information ...
=====================================================
For more information about |azure| and how to use it with |chef|:

* `Microsoft Azure Documentation <http://www.windowsazure.com/en-us/documentation/services/virtual-machines/>`_
* `Chef Documentation <https://docs.opscode.com>`_




