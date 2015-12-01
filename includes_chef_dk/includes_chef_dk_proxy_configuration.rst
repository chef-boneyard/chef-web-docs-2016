.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Proxies
-------

If you are in an environment which requires proxies to reach the Internet, many
Chef commands will not work until they are configured. To configure Chef, set
the `http_proxy` and `https_proxy` environment variables (lowercase!).

Setting It Up: Windows
----------------------

To find out what your proxy server is on Windows (and whether you have one), go
to Internet Properties > Connections > LAN settings and look at the Proxy server
setting. If it is not set or blank, you probably don't have a proxy server.

Go to System Properties > Environment Variables > System variables, and set
http_proxy and https_proxy (lowercase!) to the location of your proxy server.

Setting It Up: Linux
--------------------

To find our what your current proxy server is on OS/X and Linux, you should check
your environment variables: `env | grep -i http_proxy`. If you see an environment
variable set, *make sure it is lowercase*. If not, add a lowercase version of
your proxy variables to your shell (e.g. ~/.bashrc) with the lines:

```
export http_proxy=http://myproxy.com:3168
export https_proxy=http://myproxy.com:3168
```
