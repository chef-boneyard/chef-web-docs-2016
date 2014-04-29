=====================================================
Community Contributions
=====================================================

We are glad you want to contribute to Chef! Here's how:

#. Create an account on the open source ticket tracking system: http://tickets.opscode.com
#. Sign the contributor licensing agreement (`CLA <http://docs.opscode.com/community_contributions.html#about-clas-and-cclas>`_) or corporate contributor license agreement (`CCLA <http://docs.opscode.com/community_contributions.html#about-clas-and-cclas>`_): https://secure.echosign.com/public/hostedForm?formid=PJIF5694K6L; both individuals and companies must sign the contributor licensing agreement unless the fix is an `Obvious Fix <http://docs.opscode.com/community_contributions.html#the-obvious-fix-rule>`_
#. Create a ticket for the change on the bug tracker
#. Link to your patch as a rebased git branch or pull request from the ticket; pull requests may be made in |github| against any |company_name|-managed open source project
#. Resolve the ticket as ``Fix Provided``

We regularly review contributions and will get back to you if we have any suggestions or concerns.

|company_name|-managed open source projects are located here: https://github.com/opscode.


About CLAs and CCLAs
=====================================================
A contributor licensing agreement (CLA) and/or a company contributor licensing agreement (CCLA) must be filled out by every contributor to an |company_name|-managed open source project.

The CLA (and CCLA) makes everyone's rights clear

* You (or your company) grant copyright license for your contributions to |company_name|
* You (or your company) grant patent license for your contributions to |company_name|
* The contribution is entirely voluntary
* The work is your original creation
* You (or your company) are not required to provide support for your contributions
* You (or your company) should read and understand the entire CLA (or CCLA) before signing it. Our description of it is not legally binding.

The CLA is beneficial to our contributors and users because:

* It ensures that we will always be able to release our projects, free from any individual contributor revoking our rights to distribute their contribution.
* This also means that, if you fork an |company_name| project, or utilize it in a commercial product, you know that you are clear of patent and copyright issues.
* It makes clear what is required of our contributors.
* The most important thing about the CLA is that it doesn't give |company_name| any special rights - it just makes things more explicit.

|company_name| does not merge any pull requests made against an |company_name|-managed open source repository until that pull request is associated with a signed CLA (or CCLA), with two exceptions: "Obvious Fixes" and pull requests made against the documentation repository (https://github.com/opscode/chef-docs).

About the Apache License
=====================================================
|company_name| uses the Apache License Version 2 because it provides the same level of freedom for our users that we desire for ourselves. Based upon the Apache Licensing FAQ, it allows you to:

* freely download and use |company_name| software, in whole or in part, for personal, company internal, or commercial purposes;
* use |company_name| software in packages or distributions that you create.

It forbids you to:

* redistribute any piece of |company_name|-originated software without proper attribution;
* use any marks owned by |company_name| in any way that might state or imply that |company_name| endorses your distribution;
* use any marks owned by |company_name| in any way that might state or imply that you created the |company_name| software in question.

It requires you to:

* include a copy of the license in any redistribution you may make that includes |company_name| software;
* provide clear attribution to |company_name| for any distributions that include |company_name| software; attribution can be done in the NOTICE file for an application, by adding yourself as an author/copyright holder to the HEADER for an individual file, and by placing text in a header file saying that new work is based on previous work
* reuse work as long as the licensing terms of the reused work remains unchanged (i.e. The Apache License Version 2 also applies to the reused work)

It does not require you to:

* include the source of the |company_name| software itself, or of any modifications you may have made to it, in any redistribution you may assemble that includes it;
* submit changes that you make to the software back to |company_name| (though such feedback is encouraged).

It is our goal to run a successful, truly open source business. To that end, we are protecting our own rights by making them explicit in our choice of licensing: you have the same rights to our open source software that we do.

The "Obvious Fix" Rule
=====================================================
|company_name|'s contribution policy is aimed at encouraging broad participation from our community, and minimizing risks to |chef| and our community due to inappropriate contributions of the intellectual property of others.

As a general standard, |company_name| requires every contributor to fill out a Contributor License Agreement ("CLA"), either individually or on behalf of a corporation.

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
An obvious fix is a pull request that does not contain creative work. We rely on your judgment to determine what is "obvious"; if you're not sure, just ask by sending an email to: oss AT getchef DOT com.

As a rule of thumb, changes are obvious fixes if they do not introduce any new functionality or creative thinking. As long as the change does not affect functionality, some likely examples include the following:

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
* Breaking a source file into multiple source files, or consolidating multiple source files into one source file, with no change in code behavior; 
* Changes to words or phrases isolated from their context;
* Changes to typeface.

Things that would still require signing a CLA before submitting would likely include stuff like the following:

* Any of the above actions that result in a change in functionality;
* A new feature;
* A translation;
* Extensive or creative comments.


