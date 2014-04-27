=====================================================
Security Notes
=====================================================

The following sections address critical security issues related to |chef|. It is strongly recommended that any actions described below be done as soon as possible. Thank you.

OpenSSL and Heartbleed
=====================================================
|company_name| released patched versions of |chef server oec|, |chef server osc|, |chef private|, and the |chef client| to address the `OpenSSL security vulnerability <https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2014-0160>`_, also known as Heartbleed.

Background
-----------------------------------------------------
Heartbleed can affect your |chef| infrastructure in the following ways:

**Chef Server Key Generation**

By default, the |chef server| generates the private keys for all of the nodes in your infrastructure while the |chef client| installed on each node first registers itself with the |chef server|. This private key is not persisted to the |chef server|, but it is transmitted across the network over a secure connection. In this case, that secure connection was provided via HTTPS using the |open ssl| library. Just like any other sensitive information in your infrastructure, it is possible that this data was compromised by the Heartbleed bug. Since the private key is only transferred once, the chances of this information leaking is much lower than other objects, but that chance is still non-zero.

**chef-client Connections to the Chef Server**

Another scenario in which the Heartbleed bug could potentially expose the client private key is when the |chef client| is connected to compromised server. A compromised server could be the |chef server| or any number of services to which the |chef client| connects, for instance when using the |resource remote_file| resource. In this case, a compromised server would be able to send a Heartbleed request back to the client and get access to 64KB of memory from the client. This memory can potentially contain the private key used by the |chef client|.

**Key Regeneration**

Depending on your comfort level with the defense around your |chef server|, you may want to regenerate your client private keys. We’ve published the `client-rekey cookbook <http://community.opscode.com/cookbooks/client-rekey/>`_ that automates the regeneration of the private keys for the |chef client|. You can find it on the community site. Alternatively, you can perform this action via the web user interface (for both |chef server osc| and |chef server oec|) for each individual client.

Actions
-----------------------------------------------------
The following steps MUST be taken:

#. Upgrade to the latest version of the |chef server|; click `here <http://www.getchef.com/blog/2014/04/09/chef-server-11-0-12-release/>`__ for |chef server osc|, `here <http://www.getchef.com/blog/2014/04/09/enterprise-chef-11-1-3-release/>`__ for |chef server oec|, and `here <http://www.getchef.com/blog/2014/04/09/enterprise-chef-1-4-9-release/>`__ for |chef private|.

  .. note:: Add-ons for |chef server oec|---|reporting|, |push jobs|, and |chef manage|---are also vulnerable; however, they use the same HTTP proxy as |chef server oec|, so after the |chef server oec| server itself is patched, the add-ons will no longer be vulnerable.

#. Regenerate the |ssl| certificates for the |chef server|; for more information about how to regenerate these keys, click `here <http://docs.opscode.com/open_source/server_security.html#regenerate-ssl-certificates>`__ for |chef server osc| and `here <http://docs.opscode.com/enterprise/server_security.html#regenerate-ssl-certificates>`__ for |chef server oec|; for |chef private|, `replace the contents <http://docs.opscode.com/server/private_chef_1x_admin_ssl.html/>`__ at ``/var/opt/opscode/nginx/ca/FQDN.cert`` and ``/var/opt/opscode/nginx/ca/FQDN.pem`` with certificates that have been regenerated using the same certifying authority that was used to generate the original |ssl| certificates.

#. Update the |chef client|.
  
  For version 11, download the release from `here <https://opscode-omnibus-packages.s3.amazonaws.com/windows/2008r2/x86_64/chef-client-11.12.0-1.windows.msi/>`__ or run the following:

  .. code-block:: bash
   
    curl -L https://www.opscode.com/chef/install.sh | sudo bash -s -- -v 11.12.0
   
  For version 10, download the release from `here <https://opscode-omnibus-packages.s3.amazonaws.com/windows/2008r2/x86_64/chef-client-10.32.2-1.windows.msi/>`__ or run the following:
   
  .. code-block:: bash
   
    curl -L https://www.opscode.com/chef/install.sh | sudo bash -s -- -v 10.32.2

#. After the |chef server| and every |chef client| is patched, it's still possible that arbitrary data was compromised during the patching process. Depending on your organization's comfort level with the defense around your |chef| installation, you may want to change user passwords and/or take additional steps to protect other sensitive data.

  .. note:: The credentials for the |chef client| do not need to be regenerated because the |chef server| `signs each request during the authentication and authorization process <http://docs.opscode.com/chef_private_keys.html#chef-client>`__. This prevents a node from accessing any data it shouldn't.


More Information
-----------------------------------------------------
Please also review the following blog posts:

* http://www.getchef.com/blog/2014/04/09/enterprise-chef-11-1-3-release/
* http://www.getchef.com/blog/2014/04/09/chef-server-heartbleed-cve-2014-0160-releases/
* http://www.getchef.com/blog/2014/04/08/release-chef-client-11-12-0-10-32-2/
* http://www.getchef.com/blog/2014/04/10/update-on-heartbleed-and-chef-keys/
