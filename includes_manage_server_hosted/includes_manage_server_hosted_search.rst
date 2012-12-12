.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

You can view search indexes and search for nodes, API clients, roles, and data bags on the **Management Console**.






Listing Search Indexes
=====================================================
More information on searching can be found on the Search page. You can also use the command line tool Knife to search.

In order to see the list of Search Indexes:

1. Log on to the Hosted Chef Management Console and select an organization to use if you are associated with multiple organizations.

2. Click on the Search tab on the main navigation menu.

This page will list all of the Indexes you can search within such as Environments, Clients, Roles, Nodes, or Data Bags.

Searching the Indexes
=====================================================
You can search through the Search Indexes including Environments, Clients, Roles, Nodes, or Data Bags by using the "attribute:value" syntax on the search page in the Management Console. More information about this syntax can be found in the Search article.

For example, if you want to search a client whose name is "foobar":

1. Log on to the Hosted Chef Management Console and select an organization to use if you are associated with multiple organizations.

2. Click on the Search tab on the main navigation menu.

3. In the text box under the "Client" search index, enter "clientname:foobar" and click on the Search client button.

   .. image:: ../../images/step_manage_server_hosted_search_index_1.jpg

The results will look like this if there is a client named "foobar":

   .. image:: ../../images/step_manage_server_hosted_search_index_2.jpg

If you leave the search box empty, it returns all the objects of that type. Searching for Environments, Data Bags, Nodes, and Roles work the same way.


 





