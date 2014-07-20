=====================================================
Pre-installation Steps
=====================================================

.. warning:: This documentation is about |chef private|, an older version of the |chef server|. For documentation about the current version of the |chef server|, see http://docs.opscode.com/server/.

This section details what needs to be done before your consultants arrive on-site to install and configure |chef private|.

Questionnaire
=====================================================
The **Pre-Installation Questionnaire** provides |company_name| with information that often streamlines the installation process, and ensures a smooth on-site delivery. The questions are delivered as messages within your project portal. To access the messages:

#. Log in to the project portal
#. Click the **Message** tab
#. Select a **Pre-Installation** category
#. Reply to each message with your answers

If your consultants have any questions, or need further information from you on these topics, they will notify you through the portal.

Requirements
=====================================================
A |chef private| deployment has some important requirements that should be identified before the actual deployment begins.

Server and Network
-----------------------------------------------------
The next step in the pre-installation process is to review our recommended server and network design. You can access our recommendations in the Server and Network Requirements message:

#. Log in to the project portal
#. Click the **Messages** tab
#. Select the **Requirements** category
#. Select the **Server and Network Requirements** message

If you have questions about the recommendations, please let us know by posting a comment on the message in the client portal. We will quickly schedule time to connect with you and review your concerns. Common changes to this section may include:

* Hardware specification may increase or decrease depending on your usage.
* Network, power, and cabling may change based on your environment

Our goal is to deliver a maintainable, highly available, supportable |chef private| environment.

Installation
-----------------------------------------------------
You should then proceed with procuring, installing and configuring the equipment according to the agreed upon requirements. You should:

* Procure the equipment
* Install it in your datacenter
* Configure the network
* Install a supported operating system on each server according to our specifications

When installing the operating systems and configuring the network, make sure you reference and comply with the agreed upon server and network requirements. Pay particular attention to the required operating system configuration.

If you have questions or encounter trouble, let us know by posting a message in the client portal.

SSL
-----------------------------------------------------
|chef private| uses |ssl| to encrypt traffic between every |chef client| and the |chef server|. As part of the server and network requirements, you will give each of the systems hostnames in DNS. Once you have supplied these hostnames, you will need to either:

* Provide |ssl| certificates for the Hostnames
* Allow us to provide self-signed certificates

Let us know your preference by replying to the |ssl| message:

#. Log in to the client portal
#. Click the **Messages** tab
#. Select the **Requirements** category
#. Select the **SSL Message**

Review
=====================================================
Each of the tasks outlined above are included in the **Pre-Installation To-Do List** within the project portal. Once they have all been marked complete, a short review meeting will be scheduled to make sure all of the prerequisites for on-site installation are covered.

