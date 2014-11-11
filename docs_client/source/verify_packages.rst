=====================================================
Verify Packages
=====================================================
The following sections describe the signed package verification process.

Package Types
=====================================================
Currently, CHEF RPMs can be verified using our key found at http://downloads.getchef.com/chef.gpg.key

RPMs
-----------------------------------------------------

To verify a package signature as root

#. Import the key

   .. code-block:: bash
      
      $ rpm --import http://downloads.getchef.com/chef.gpg.key

#. Check the signature of a chefdk package, for example

   .. code-block:: bash
      
      $ rpm -K chefdk-0.2.2-1.x86_64.rpm
        chefdk-0.2.2-1.x86_64.rpm: (sha1) dsa sha1 md5 gpg OK

This process should work on any RPMs produced by CHEF.
