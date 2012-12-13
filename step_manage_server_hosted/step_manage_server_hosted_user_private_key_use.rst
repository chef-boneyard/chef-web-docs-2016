.. This is an included how-to. 


The file you downloaded is a private key for the user account you created. It is used for both authentication, "are you a valid user?", and authorization, "are you allowed to perform this operation on this object?". More information on this can be found on the Authentication and Authorization page.

If you open the file with a text editor (Notepad.exe on Windows, TextEdit on the Mac, gEdit / Vi / Emacs on Linux), it should look like the following, but the actual value will differ:

code-block:: bash

   -----BEGIN RSA PRIVATE KEY-----
   MIIEowIBAAKCAQEArp5wl2DsS3WtUa9T3fAfREEbvm9FkhCcYAW/6vHearRYH9oi
   YJLYEPuD6ccjxotti69VQ4nkGc/55fc6os8N2qkslGjRwSkk6JUt0wxTiOyEvcsC
   LNap4osjkEDErBWGPc34PEEk77BmFUxxuNNqr/M8bheE4qJrFaBXnz+RJ3OPcTuv
   lwrIu8f32+Sl8Ex9Aaw2ESFuKSgVOACc6BVi07rQR9CIWlFM0dgM8pFTzM96Gqdp
   Xza7QQKBgCHREdDQ3LsPgSF+mAskjUcrihL1ycBQoaB9DoGLqOc8XrIJvdDn+IY+
   4wD+07Oo1WBmcu1pka/eUSIfiEEq+wEBFFjNcQIDAQABAoIBADpHdQqA9bxlpRf7
   LUGIb9cG5+ySFKUgWCCQKrKOUQ5J7JOM6SZUPDrGxwsSRLVyOXiCZzGoZvHagOwo
   rHBELLqK9e7+YOtYARKDH40tsv+i+NajV7GBX6fVimQNydYpROmBwdTSZTJ+LEP1
   hIsMPLJGuyd/QAGn9Zd9MWFcBOUmVg2aLAQ/smmKTpqu9PkNBzyiEw5pdSuxMFEN
   H8/k5XtV5UaqJrUGDEqMphUFXYsACSVeJZ3Vd/B/XgwnI2y3ZqrreS9Fm1KTRTIt
   vZ5jqpbsxf18IQ4Nx/3KvgXf+9glpj7CNIayCQDuG4GfjB+ATWDBRX3e+YeEnehm
   1KA3kbBZURRlnBxEwIym83fyXzpMDUvlnPzc5CVisIkl60MZDEmGCrpTVXcPn2k1
   mKuO/YWhg5mINRK3W7IouPIROXklZGQfR1/WmwV9N3q44x5wMnldKWeO8S7I/oky
   c/zY03z3HBaYEHG7QeqMy9F4MbS8sa+GzRLZuY+Opn863+B5O9pcYp0CgYEAxgsn
   C1snRWrugqXyNE3LnEM3oE57+NVPNGn/viu+dcVMcbRGkFgv6/siMJ/K+FSOxKEu
   LxdeIssm+73wzEpsVJIUg4yhSgpj6VWKIMrodMiK6xLnfGNjrLpEoeCyARc/dvQd
   OZsA0FJVKXyeuSPWEbioctTV1FHzNgNRZ1/Dw+UCgYBAZiSLVuMnqMH9Dee3Brbr
   Y8J+X/ECgYEA4bhhSIdb50y4o2r+j7y4X+M/uNTRBnRYQ3pJ/+bTxS8OPJ0hbJ8J
   KejGrdg93eumEOcd33Zu+7bSpPB/fpFAemE6Zary/pdACdLNSagF9qt+MvyrDVM+
   ayRnRsgCRMZ9XUP5iaFWGQKBgQC0fVWIM/sGeP4Gc9bZdE0sjNYVc3Hoxf75deFu
   WqfmIzuhSRSFZegHuu30Bi5vmoCiEXC6Sd0pivIBE8SWJ6YAuaSvLtBZpIiPq0SG
   0Pl99Ycl1oTCCJK+yMPkBDQ2akmcz74S0gFb2q1isgC2GsLuQ6zBetemOUm+4CdA
   tJrck5bF3y1115hrusd5nzKipPwSjNZKYsqovXQevOjjQU8q24vZBTPQXiNZ/cqR
   T7hl6b5fMp/c3d27aCg+9fBnjP9uGGtIftKigOZDpd5hvl72SsRxrHSm8ZFumWY3
   TT6BQEheN21G6rXaYDVQ1WvQBpnMasWPBaHzLfbs4yS5dBVYYlS8 
   -----END RSA PRIVATE KEY-----

Any tool which sends a request to Hosted Chef on behalf of your user account uses this key to sign the request. This includes but is not limited to the command line tool 'knife', and the 'chef-client' which runs on machines under configuration management.

Make sure you can find this file later. You'll need its path when configuring other tools. Here's an example of the configuration file for the 'knife' command line tool. Notice your user's private key file path is referred to here as 'client_key':

.. code-block:: ruby

   log_level        :info
   log_location     STDOUT
   node_name        'your-user'
   client_key       '/Users/you/.chef/your-user.pem'
   chef_server_url  'http://127.0.0.1/organizations/your-org/' 
   cache_type       'BasicFile'
   cache_options( :path => '/Users/you/.chef/checksums' )

.. note:: For more information on public-key cryptography and on Opscode's API request signing refer to the wiki page on Authentication or http://en.wikipedia.org/wiki/Public-key_cryptography