=====================================================
Community Contributions
=====================================================

Thank you for contributing to an |opscode| Open Source project!

Getting Started
=====================================================
To contribute to an |opscode| open source project you must first: 

#. Sign up for an account on the Open Source Ticket Tracking System. This will create an identical account for you on the Wiki. We match the email address from your CLA to this account.
#. Fill out a Contributor License Agreement. If your contribution is happening on behalf of a company, they should sign a Corporate Contributor License Agreement. Please complete and digitally sign the form, the process and submittal fully managed for you through Echosign. This will take 3-5 minutes. You'll be emailed a copy when we've received it. We'll process it, and send you an introduction email. You'll then appear as a approved contributor, and be upgraded to a Developer on the Ticket Tracking System: allowing you to modify and transition ticket status.

GitHub Pull Requests
-----------------------------------------------------
A one-time CLA submittal - and relating pull requests to trouble ticket(s) - provides for managing submittals across the projects, for fulfilling Apache licensing, and resulting in your successful and appreciated contribution to the community.

Individual Contributions
-----------------------------------------------------
To make individual contributions to an |opscode| open source project: 

#. Fork the project you would like to contribute to on GitHub.
#. Create a ticket on http://tickets.opscode.com, providing any useful information on the issue.
#. Provide instructions on the ticket which GitHub repository and branch should be pulled from, and set the ticket status to "Fix Provided" when you are complete.
#. We'll test, verify and merge your changes and then close the ticket.
#. Want to know more about the workflow? Check out the Code Review page.


Opscode Sponsored Open Source Projects
=====================================================
The following open source projects are sponsored by |opscode|:

.. list-table::
   :widths: 100 200 200
   :header-rows: 1

   * - Project
     - Ticket System
     - Github URL
   * - Chef
     - http://tickets.opscode.com/browse/CHEF
     - http://github.com/opscode/chef
   * - Ohai
     - http://tickets.opscode.com/browse/OHAI
     - http://github.com/opscode/ohai
   * - Cookbooks
     - http://tickets.opscode.com/browse/COOK
     - http://github.com/opscode-cookbooks
   * - Knife-EC2
     - http://tickets.opscode.com/browse/KNIFE_EC2
     - http://github.com/opscode/knife-ec2
   * - Knife-Rackspace
     - http://tickets.opscode.com/browse/KNIFE_RACKSPACE
     - http://github.com/opscode/knife-rackspace
   * - Knife-Windows
     - http://tickets.opscode.com/browse/KNIFE_WINDOWS
     - http://github.com/opscode/knife-windows
   * - Knife-OpenStack
     - http://tickets.opscode.com/browse/KNIFE_OPENSTACK
     - http://github.com/opscode/knife-openstack

There are a number of other smaller projects, such as the mixlib libraries, that we sponsor as dependencies of |chef|. 
You can find this in the |opscode| account on |github|.


Licensing and Copyright
=====================================================
Why is your software Apache Licensed? Opscode uses the Apache License Version 2 because it provides the same level of freedom for our users that we desire for ourselves. Based upon the Apache Licensing FAQ...

It allows you to:

* freely download and use Opscode software, in whole or in part, for personal, company internal, or commercial purposes;
* use Opscode software in packages or distributions that you create.

It forbids you to:

* redistribute any piece of Opscode-originated software without proper attribution;
* use any marks owned by Opscode in any way that might state or imply that Opscode endorses your distribution;
* use any marks owned by Opscode in any way that might state or imply that you created the Opscode software in question.

It requires you to:

* include a copy of the license in any redistribution you may make that includes Opscode software;
* provide clear attribution to Opscode for any distributions that include Opscode software.

It does not require you to:
* include the source of the Opscode software itself, or of any modifications you may have made to it, in any redistribution you may assemble that includes it;
* submit changes that you make to the software back to Opscode (though such feedback is encouraged).

It is our goal to run a successful, truly open source business. To that end, we are protecting our own rights by making them explicit in our choice of licensing: you have the same rights to our open source software that we do.

**How should I update the header file of my contribution to properly credit earlier contributors and recognize copyrights?**

You need to put attribution about the origins of some of the code in the NOTICE file for your app. On an individual header, you can add yourself as an author/copyright holder, placing text in the header file saying that your new work is based on previous work, and referencing the original header below.

If the original file is lacking the license header, please let us know, so we can add one. Even in their absence, they are covered by the Apache 2 license.

**Do I need the agreement of anyone else whose authorship/copyright I come across?**
You can re-use the work without having to get the agreement of the original authors, as long as you're not going to be changing the licensing terms at all (ie: you maintain and fulfill Apache 2 licensing requirements) and you don't modify the fact that the code you are incorporating remains copyrighted by the original authors.
The Apache License grants these rights to those who receive a copy of the software.



CLAs and CCLAs
=====================================================
A CLA must be filled out by every contributor to an Opscode-managed open source project.

The CLA (and CCLA) makes everyone's rights clear. It states:

* You grant copyright license for your contributions to Opscode
* You grant patent license for your contributions to Opscode
* Your contribution is entirely voluntary
* Your work is your original creation
* You are not required to provide support for your contributions
* You should read and understand the entire CLA before signing it. Our description of it is not legally binding.

The CLA is beneficial to our contributors and users because:

* It ensures that we will always be able to release our projects, free from any individual contributor revoking our rights to distribute their contribution.
* This also means that, if you fork an Opscode project, or utilize it in a commercial product, you know that you are clear of patent and copyright issues.
* It makes clear what is required of our contributors.
* The most important thing about the CLA is that it doesn't give Opscode any special rights - it just makes things more explicit.

**Can you accept my contribution without a CLA (I'll sign it later, I promise!)?**

No. We must have a signed CLA before we can merge your changes to any of our projects.

**When do I need to have my company sign a CCLA?**

If you are contributing to an Opscode project while doing work on company time, or utilizing company resources, you should have your company sign a CCLA.

**How do I add additional employees to my existing CCLA?**

The point of contact from your CCLA should email legal@opscode.com with the full name and email address of the individuals account on tickets.opscode.com that they would like added.

**How do I change the point of contact on my existing CCLA?**

If you need to update the point of contact for the CCLA, the current contact should email legal@opscode.com with the full name and email address of the new contact. If the existing contact is no longer available, please contact us and we will help you out.



Contribution Process
=====================================================
Contribute Changes to Opscode-Managed Apache Licensed Cookbooks at the Community Site. All other cookbooks require no CLA. Once you have signed a CLA and have a ticket referencing your request, see How to Contribute to Opscode Cookbooks. Opscode doesn't maintain all the cookbooks on the community site, and individual maintainers choose whatever license they like. Contact those authors to find out what their contribution process is.

If you have created your own cookbook you would like to share with the community, read about adding a cookbook to the community site.

**Do I have to use GitHub for my fork of the repository?**

Nope - but it makes everyone's lives easier if you do. We'll be happy to pull from any repository you like.

**Why do I need to have a ticket associated with my patch?**

When working on the code, having patches associated with tickets helps other contributors understand why a change was made. This is important in distributed software projects where you can't go over and ask a colleague about the code. It also helps us coordinate the changelog for future releases, and provides for recognizing community participation.

**You use GitHub, why don't you use GitHub Pull Requests?**

We use JIRA for our open source projects and for our own internal projects: managing all the details of the code base, and fulfilling license requirements for our joint benefit. We also interact regularly with the GitHub issues/pull request system. You are welcome to open a pull request, and link to that when updating the Jira ticket for a contribution. 





The Opscode "Obvious Fix" Rule
=====================================================
|opscode|'s contribution policy is aimed at encouraging broad participation from our community, and minimizing risks to |chef| and our community due to inappropriate contributions of the intellectual property of others.

As a general standard, require every contributor to fill out a Contributor License Agreement ("CLA"), either individually or on behalf of a corporation.

HOWEVER, very small contributions such as fixing spelling errors, where the content is small enough to not be considered intellectual property, can be submitted by a contributor as a patch, without a CLA. If you submit an obvious fix without first signing a contributor license agreement, then you are agreeing that your submission is not independently copyrightable. The purpose of this exception is to lower the barrier for new contributors to make contributions while retaining the integrity of the project and our community.

How does the Obvious Fix Rule Work?
-----------------------------------------------------
Any committer may commit fixes without first signing a CLA for obvious typos, grammar mistakes, and formatting problems wherever they may be — in the web pages, API documentation, source code, etc.

Whenever you invoke the "obvious fix" rule, please say so in your commit message. For example::

   ------------------------------------------------------------------------
   commit 370adb3f82d55d912b0cf9c1d1e99b132a8ed3b5 
   Author: danielsdeleo <dan@opscode.com> 
   Date:   Wed Sep 18 11:44:40 2013 -0700      
   
     Fix typo in config file docs.          
   
     Obvious fix.
   
   ------------------------------------------------------------------------

What qualifies as an Obvious Fix?
-----------------------------------------------------
An obvious fix is a pull request that does not contain creative work. We rely on your judgment to determine what is "obvious"; if you're not sure, just ask.
As a rule of thumb, changes are obvious fixes if they do not introduce any new functionality or creative thinking.  As long as the change does not affect functionality, some likely examples include the following:

* Spelling/grammar fixes;
* Correcting typos;
* Cleaning up comments in the code;
* Changes to white space or formatting;
* Bug fixes that change default return values or error codes stored in constants, literals, or simple variable types;
* Adding logging messages or debugging output;
* Changes to 'metadata' files like Gemfile, rebar.config, Makefile, app.config, sys.config, .gitignore, example configuration files, build scripts, etc.;
* Changes that reflect outside facts, like renaming a build directory or changing a constant;
* Changes in build or installation scripts;
* Re-ordering of objects or subroutines within a source file (such as alphabetizing routines);
* Moving source files from one directory or package to another, with no changes in code;
* Breaking a source file into multiple source files, or consolidating multiple source files into one source file, with no change in code behaviour; 
* Changes to words or phrases isolated from their context;
* Changes to typeface.

Things that would still require signing a CLA before submitting would likely include stuff like the following: 
* Any of the above actions that result in a change in functionality;
* A new feature;
* A translation;
* Extensive or creative comments.

