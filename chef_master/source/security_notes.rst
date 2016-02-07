=====================================================
Security Notes
=====================================================

The following sections address critical security issues related to |chef|. It is strongly recommended that any actions described below be done as soon as possible. Thank you.

CSRF, Doorkeeper (CVE-2014-8144)
=====================================================
(December 17, 2014) |company_name| released patched versions of |chef server oec|---11.2.6---and |chef server|--12.0.1---to address the `CSRF vulnerability in Doorkeeper <http://seclists.org/oss-sec/2014/q4/1076>`_.

Background
-----------------------------------------------------
A remote attacker could hijack a user's |oauth| authorization code via a vulnerability in doorkeeper 1.4.0.

Actions
-----------------------------------------------------
The following steps should be taken:

#. Upgrade to the latest version of the |chef server|.
#. Click `here <https://downloads.chef.io/chef-server/>`__ for |chef server| 12.0.1, `here <https://downloads.chef.io/enterprise-chef/>`__ for |chef server oec| 11.2.6.


OpenSSL and SSL/TLS MITM (CVE-2014-0224)
=====================================================
(June 6, 2014) |company_name| released patched versions of |chef server oec|, |chef server osc|, |chef private|, and the |chef client| to address the `OpenSSL man-in-the-middle (MITM) security vulnerability <https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2014-0224>`_.

Background
-----------------------------------------------------
An attacker could use a carefully crafted handshake to force the use of weak keying material. This can result in a man-in-the-middle (MITM) attack, allowing an attacker to read or alter traffic between the client and server.

.. note:: This attack can only be performed between a vulnerable client and server. If SSL is terminated on a load balancer located in front of the |chef server|, address the vulnerability on the load balancer first.

.. note:: The private keys and certificates used by the |chef client| do not need to be regenerated unless they have been transferred by paths protected by SSL/TLS. If they have been transferred in that manner, consider regenerating those keys and certificates.

Actions
-----------------------------------------------------
The following steps should be taken:

#. Upgrade to the latest version of the |chef server|; click `here <http://www.chef.io/blog/2014/06/06/chef-server-11-1-1-release/>`__ for |chef server osc|, `here <http://www.chef.io/blog/2014/06/06/enterprise-chef-server-11-1-6-release/>`__ for |chef server oec|, and `here <http://www.chef.io/blog/2014/06/06/enterprise-chef-1-4-11-release/>`__ for |chef private|.
   
   .. note:: Add-ons for |chef server oec|---|reporting|, |push jobs|, and |chef manage|---are also vulnerable; however, they use the same HTTP proxy as |chef server oec|, so after the |chef server oec| server itself is patched, the add-ons will no longer be vulnerable.

#. Update the |chef client|.
   
   For version 11, run the following:
   
   .. code-block:: bash
   
      curl -L https://www.chef.io/chef/install.sh | sudo bash -s -- -v 11.12.8
   
   For version 10, run the following:
   
   .. code-block:: bash
   
      curl -L https://www.chef.io/chef/install.sh | sudo bash -s -- -v 10.32.2

#. After the |chef server| and every |chef client| is patched, you should change user passwords, encryption for data bags, and/or take additional steps to protect other sensitive data.


OpenSSL and Heartbleed
=====================================================
(April 25, 2014) |company_name| released patched versions of |chef server oec|, |chef server osc|, |chef private|, and the |chef client| to address the `OpenSSL security vulnerability <https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2014-0160>`_, also known as Heartbleed.

Background
-----------------------------------------------------
Heartbleed can affect your |chef| infrastructure in the following ways:

**Chef Server Key Generation**

By default, the |chef server| generates the private keys for all of the nodes in your infrastructure while the |chef client| installed on each node first registers itself with the |chef server|. This private key is not persisted to the |chef server|, but it is transmitted across the network over a secure connection. In this case, that secure connection was provided via HTTPS using the |open ssl| library. Just like any other sensitive information in your infrastructure, it is possible that this data was compromised by the Heartbleed bug. Since the private key is only transferred once, the chances of this information leaking is much lower than other objects, but that chance is still non-zero.

**chef-client Connections to the Chef Server**

Another scenario in which the Heartbleed bug could potentially expose the client private key is when the |chef client| is connected to compromised server. A compromised server could be the |chef server| or any number of services to which the |chef client| connects, for instance when using the |resource remote_file| resource. In this case, a compromised server would be able to send a Heartbleed request back to the client and get access to 64KB of memory from the client. This memory can potentially contain the private key used by the |chef client|.

**Key Regeneration**

Depending on your comfort level with the defense around your |chef server|, you may want to regenerate your client private keys. We’ve published the `client-rekey cookbook <https://supermarket.chef.io/cookbooks/client-rekey/>`_ that automates the regeneration of the private keys for the |chef client|. You can find it on the community site. Alternatively, you can perform this action via the web user interface (for both |chef server osc| and |chef server oec|) for each individual client.

Actions
-----------------------------------------------------
The following steps should be taken:

#. Upgrade to the latest version of the |chef server|; click `here <http://www.chef.io/blog/2014/04/09/chef-server-11-0-12-release/>`__ for |chef server osc|, `here <http://www.chef.io/blog/2014/04/09/enterprise-chef-11-1-3-release/>`__ for |chef server oec|, and `here <http://www.chef.io/blog/2014/04/09/enterprise-chef-1-4-9-release/>`__ for |chef private|.

   .. note:: Add-ons for |chef server oec|---|reporting|, |push jobs|, and |chef manage|---are also vulnerable; however, they use the same HTTP proxy as |chef server oec|, so after the |chef server oec| server itself is patched, the add-ons will no longer be vulnerable.

#. Regenerate the |ssl| certificates for the |chef server|; for more information about how to regenerate these keys, click `here <https://docs.chef.io/open_source/server_security.html#regenerate-ssl-certificates>`__ for |chef server osc| and `here <https://docs.chef.io/enterprise/server_security.html#regenerate-ssl-certificates>`__ for |chef server oec|; for |chef private|, `replace the contents <https://docs.chef.io/server/private_chef_1x_admin_ssl.html/>`__ at ``/var/opt/opscode/nginx/ca/FQDN.cert`` and ``/var/opt/opscode/nginx/ca/FQDN.pem`` with certificates that have been regenerated using the same certifying authority that was used to generate the original |ssl| certificates.

#. Update the |chef client|.
  
   For version 11, download the release from `here <https://opscode-omnibus-packages.s3.amazonaws.com/windows/2008r2/x86_64/chef-client-11.12.0-1.windows.msi/>`__ or run the following:

   .. code-block:: bash
   
     curl -L https://www.chef.io/chef/install.sh | sudo bash -s -- -v 11.12.0
   
   For version 10, download the release from `here <https://opscode-omnibus-packages.s3.amazonaws.com/windows/2008r2/x86_64/chef-client-10.32.2-1.windows.msi/>`__ or run the following:
   
   .. code-block:: bash
   
     curl -L https://www.chef.io/chef/install.sh | sudo bash -s -- -v 10.32.2

#. After the |chef server| and every |chef client| is patched, it's still possible that arbitrary data was compromised during the patching process. Depending on your organization's comfort level with the defense around your |chef| installation, you may want to change user passwords and/or take additional steps to protect other sensitive data.

   .. note:: The credentials for the |chef client| do not need to be regenerated because the |chef server| `signs each request during the authentication and authorization process <https://docs.chef.io/chef_private_keys.html#chef-client>`__. This prevents a node from accessing any data it shouldn't.


More Information
-----------------------------------------------------
Please also review the following blog posts:

* http://www.chef.io/blog/2014/04/09/enterprise-chef-11-1-3-release/
* http://www.chef.io/blog/2014/04/09/chef-server-heartbleed-cve-2014-0160-releases/
* http://www.chef.io/blog/2014/04/08/release-chef-client-11-12-0-10-32-2/
* http://www.chef.io/blog/2014/04/10/update-on-heartbleed-and-chef-keys/
