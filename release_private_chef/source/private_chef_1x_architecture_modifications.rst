=====================================================
Modifications
=====================================================

.. warning:: This documentation is about |chef private|, an older version of the |chef server|. For documentation about the current version of the |chef server|, see http://docs.getchef.com/server/.

The three supported |chef private| topologies discussed in this guide are the product of our experiences with |chef hosted| and, we feel, will provide our customers with the best |chef| platform for their environments.

|chef private| is software, and many of the components are familiar to our customers and in use in other parts of their environments. However, we have provided you with the best configuration for these components to meet the needs and idiosyncrasies of |chef private|.

By employing one of the three topologies discussed in this guide, our support team will be able to help you with any issues that may arise in your environment, and we’ll be able to deliver you updates and upgrades in a consistent manner that will keep your data safe. Deviation from these topologies reduces our capability to help you when things don’t work as they should, and that makes us sad.

We know that many of our customers are talented and knowledgeable technical people, and have experience running many of the components that are included as part of |chef private|. Your environment may have an existing run book or best practice for any or all of these components individually already. We ask that you treat your |chef private| system as its own entity for optimal performance.

We value your feedback and input on any questions, concerns, and issues you have with |chef private|. Our team is open to suggestions and community participation is encouraged, especially on our IRC channel and at our events. While we are not able to make extensive customizations for |chef private| installations, your feedback will help us decide on future development on the product for which |company_name| officially provides support.

The rest of this document serves as a FAQ of commonly requested modifications to |chef private|.

SAN-backed
=====================================================
We realize that many of our customers have production environments that provide support for highly available external storage systems. There are a number of such systems available commercially, and providing extensive customer support for |chef private| on all of them is outside our scope.

If your team decides that your |chef private| back-end must be attached to external storage, please let your |company_name| sales representative know as early as possible, and notify your installation consultant if one has been assigned.

The tooling provided with |chef private| and |private chef ctl| will not be modified to be made aware of your environment, which means that the automatic failover of your system will become a manual process or otherwise automated by your team. Such modifications should be carefully documented, as any upgrade process to future versions of |chef private| will need to include those changes. It is not recommended that you make extensive modifications to the software delivered in ``/opt/opscode``.

Scaling
=====================================================
The topology options supported by |company_name| allow for a wide range of successful |chef private| environments, and are not likely to require any modifications even for our larger customers.

The individual components of the |chef private| server are commonly available technologies and we expect that many of our customers are already familiar with them. However, |company_name| has taken the guesswork out of configuring |chef private| and has given you configurations that represent everything we have learned while building and running |chef hosted|.

Scaling individual components presents configuration and failover challenges to your |chef private| environment, and is not supported. We discourage our customers from going rogue and scaling things anyway; please give us a chance to work on your scaling issues before deviating your environment from the supported technologies.

If you find that your environment is having problems converging all of your nodes on the schedule you want them to be converged on, please contact our Support team and file a ticket. There may be an underlying cause that we are already aware of or suspect that can be fixed in a timely manner. If not, our support folks will work with the members of our engineering team who know the components you are having issues with to determine a course of action.

We want any and all modifications made to |chef private| to make sense, and we want to be able to support them for you when you need us. We also want to be able to provide you with updates and upgrades that happen as smoothly as possible. We can best meet those goals if we are able to fashion sustainable solutions to customer issues as they arise.

Where is MySQL?
=====================================================
As of this writing, your |chef private| installation will run with a |postgresql| back-end. This decision was the culmination of a lengthy performance review of various data store technologies, as well as a careful review of the legalities of shipping you |chef private| with components of differing license types.

At some point in the not-far-off future, |mysql| will be supported as a datastore option in place of |postgresql| for |chef private| installations. When we are ready to fully support |mysql| for our customers, we will provide you with a supported migration path to ensure that your environment is fully functional after the switch.

Until that time, all |chef private| installations will run |postgresql|. We will be letting our customers know when |mysql| will be available.

But X-tech is better!
=====================================================
One thing we definitely love about technology and our community is how many ways there are to accomplish a goal. We’ve learned a lot about what works best for |chef|, and over its short lifetime have made various fundamental changes to the technologies we use. It’s totally awesome that you love technology X, but we don’t feel it’s a good fit for us at this time. We might look at it in the future, or we may have already cooked something up in our test kitchens that didn’t meet our needs. It’s still cool, though!

