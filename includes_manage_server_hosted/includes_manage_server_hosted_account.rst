.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The **Management Console** allows users to manage the |chef hosted| account. You are able to update account information for your organization from the Hosted Chef Management Console This article assumes you have already setup an opscode account.

If you're interested in editing user, node or other data in the Management Console instead, return to Hosted Chef Management Console, and make the appropriate selection.

Selecting the Organization to Edit
=====================================================
From the Manage Account page of the Hosted Chef Management Console you can update the details about your organization. The only information you can change about your organization is the Organization Full Name field. This field represents the formal way in which somebody would address your organization. To change your Organization Full name,

Log into http://manage.opscode.com,
Click on "Organizations" in the upper right-hand corner,
Click on "Manage Account" for the relevant organization,
The Hosted Chef Management console will redirect you to the Account Management Tool.

   .. image:: ../../images/step_manage_server_hosted_account_edit_1.jpg

From this tool, you can also switch between organization:

Click on either "View/Edit Plan" or "Billing Details" depending on the task (see below).
Organizations that you are a member of will appear in a drop down near the top of the page.
You will need to be a member of the billing-admins group to view or modify the billing or plan information. If you are not a billing-admin you will see this error instead:

   .. image:: ../../images/step_manage_server_hosted_account_edit_2.jpg

To become a billing-admin, a member of the billing-admins group must add your user to the billing-admins group.

Billing Details
=====================================================
From the Billing page of the Account Opscode Management tool you can edit the billing details for your organization. The Billing Details section contains the following information:

Credit Card Information
-----------------------------------------------------
The Billing Information section of the Billing Page page shows you the information about the credit card you have on file. If no credit card is on file, you can use the "Add Credit Card" button to add a credit card.

   .. image:: ../../images/step_manage_server_hosted_account_billing_cc_info_1.jpg

Enter your billing information in the form that appears and click the update button.

   .. image:: ../../images/step_manage_server_hosted_account_billing_cc_info_2.jpg

If you have previously entered your billing information, a summary of that information will appear:

   .. image:: ../../images/step_manage_server_hosted_account_billing_cc_info_2.jpg

You can also update your billing information by clicking the Edit button.

Billing Contact Information
-----------------------------------------------------
The Billing Contact Information is the information that Opscode will use to contact your organization if any problems arise during the billing process. The current billing contact information will appear in the left pane of the Billing information page. You can update this information by clicking the Edit button.

   .. image:: ../../images/step_manage_server_hosted_account_billing_contact_info.jpg

Billing History
-----------------------------------------------------
The Billing History section of the Billing Page allows you to view PDFs of previous statements. You can retrieve the statement for a given period by clicking the "View PDF" button.

   .. image:: ../../images/step_manage_server_hosted_account_billing_history.jpg

Billing Plan
-----------------------------------------------------
From the View/Edit Plan page of the Account Management tool, you can change your organization's subscription to Hosted Chef. Selecting your desired plan will update your subscription and you will be charged according to the billing information currently on file.

   .. image:: ../../images/step_manage_server_hosted_account_billing_plan.jpg

Canceling your Subscription
=====================================================
	Be Careful: Canceling your subscription to Hosted Chef will cut off your access to the Hosted Chef API and your data.
From the View/Edit Plan page of the Account Management tool, you can cancel your organization's subscription to Hosted Chef.

Select the "Cancel"" button,
Carefully read the presented warning,
Enter a reason for cancellation, and
Press "Submit"

   .. image:: ../../images/step_manage_server_hosted_account_cancel_1.jpg

   .. image:: ../../images/step_manage_server_hosted_account_cancel_2.jpg




