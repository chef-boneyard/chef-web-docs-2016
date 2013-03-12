.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The following example shows an authentication request to |chef hosted|:

.. code-block:: http

   GET /organizations/organization_name/nodes HTTP/1.1
     Accept: application/json
     Accept-Encoding: gzip;q=1.0,deflate;q=0.6,identity;q=0.3
     X-Ops-Sign: algorithm=sha1;version=1.0;
     X-Ops-Userid: user_id
     X-Ops-Timestamp: 2013-03-12T17:13:28Z
     X-Ops-Content-Hash: 2jmj7l5rfasfgSw0ygaVb/vlWAghYkK/YBwk=
     X-Ops-Authorization-1: BE3NnHeh5yFTiT3ifuwLSPCCYasdfXaRN5oZb4c6hbW0aefI
     X-Ops-Authorization-2: sL4j1qtEZzi/2WeF67UuytdsdfgbOc5CjgECQwqrym9gCUON
     X-Ops-Authorization-3: yf0p7PrLRCNasdfaHhQ2LWoE/+kTcu0dkasdfvaTghfCDC57
     X-Ops-Authorization-4: 155i+ZlthfasfhbfrtukusbIUGBKUYFjhbvcds3k0i0gqs+V
     X-Ops-Authorization-5: /sLcR7JjQky7sdafIHNEEBQrISktNCDGfFI9o6hbFIayFBx3
     X-Ops-Authorization-6: nodilAGMb166@haC/fttwlWQ2N1LasdqqGomRedtyhSqXA==
     Host: api.opscode.com:443
     X-Chef-Version: 11.4.0
     User-Agent: Chef Knife/11.4.0 (ruby-1.9.2-p320; ohai-6.16.0; x86_64-darwin11.3.0; +http://opscode.com)