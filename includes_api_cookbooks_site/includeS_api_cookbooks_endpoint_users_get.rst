.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``GET`` method is used to get the details for a user.

This method has no parameters.

**Request**

.. code-block:: xml

   GET /users/USERNAME

**Response**

The response will return details for a user, including the Chef username of the user, the name of the user, the associated account details for the user, the cookbooks that user owns, the cookbooks that user collaborates on, and the cookbooks that user follows.

.. code-block:: ruby

   {
     "username": "sethvargo",
     "name": "Seth Vargo",
     "company": "Chef Software, Inc",
     "github": [
       "sethvargo"
     ],
     "twitter": "sethvargo",
     "irc": "sethvargo",
     "jira": "sethvargo",
     "cookbooks": {
       "owns": {
         "bacon": "https://supermarket.getchef/api/v1/cookbooks/bacon"
         "chef-sugar": "https://supermarket.getchef/api/v1/cookbooks/chef-sugar"
       },
       "collaborates": {
         "build-essential": "https://supermarket.getchef/api/v1/cookbooks/build-essential"
         "jenkins": "https://supermarket.getchef/api/v1/cookbooks/jenkin"
       },
       "follows": {
         "bacon": "https://supermarket.getchef/api/v1/cookbooks/bacon"
         "chef-sugar": "https://supermarket.getchef/api/v1/cookbooks/chef-sugar"
       }
     }
   }
