.. This is an included how-to. 

To delete an organization:

1. Log on to the |chef private| management console.
2. Select an organization (if there is more than one).
3. Click xxxxx.
4. Click xxxxx. Click OK.


**** 
From Steven Danna, HipChat.

Use the following directions to delete an organization on Opscode Private Chef:

1. Log into any of the servers in your Private Chef cluster with a
user capable of running commands as root.  

2. Launch `shef`, the interactive Chef console, as root:

       sudo /opt/opscode/bin/shef

3. You will now be in the interactive shef console.  First, we need to
do some configuration:

       account_api = Chef::REST.new("https://api.opscode.piab","pivotal","/etc/opscode/pivotal.pem"); nil

   Note that "http://api.opscode.piab" should be replaced by the URL
   to the API endpoint for your installation.  If you are on the
   frontend box, you can likely simply use "https://localhost".

4. To delete the organization, you will need the "short name" of the
organization.  This is the organization name that appears in the
chef_server_url for the organization.  Replacing ORGNAME for the
desired hostname, you can confirm that you have the correct org via
the following:

    pp account_api.get_rest("organizations/ORGNAME")

5.  Carefully confirm that the organization in question is correct.
Delete an organization cannot be reversed without restoring your
installation from backups.

6. Delete the organization:

    account_api.delete_rest("organizations/ORGNAME")
