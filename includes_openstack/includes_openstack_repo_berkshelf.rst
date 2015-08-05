.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The |openstack chef_repo| uses |berkshelf| (https://berkshelf.com) to manage downloading all of the proper cookbook versions, whether from |git| or from the |company_name| community website (https://supermarket.chef.io). The preference is to eventually upstream all cookbook dependencies to the |company_name| community website. A |berksfile| (the file type used by |berkshelf|) lists the current cookbook dependencies.
