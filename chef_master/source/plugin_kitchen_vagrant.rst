=====================================================
kitchen-vagrant
=====================================================

kitchen-vagrant is the |kitchen| driver for |vagrant| and the default driver installed and packaged with the |chef dk|. This driver generates a single ``Vagrantfile`` for each |kitchen| instance into a sandboxed directory. Because the ``Vagrantfile`` is written out to disk, |vagrant| requires no knowledge of |kitchen| and requires no additional plugins.

This plugin requires both |vagrant| and |virtualbox| to be installed on the same machine from which |kitchen| instances will be created.

