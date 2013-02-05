.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Modifications

The three supported Private Chef topologies discussed in this guide are the product of our experiences with Hosted Chef and, we feel, will provide our customers with the best Chef platform for their environments. As of this writing, Hosted Chef is still the largest Chef environment in existence, and we continue to use what we learn from customer feedback to make improvements.

Private Chef is software, and many of the components are familiar to our customers and in use in other parts of their environments. However, we have provided you with the best configuration for these components to meet the needs and idiosyncrasies of Private Chef. By employing one of the three topologies discussed in this guide, our support team will be able to help you with any issues that may arise in your environment, and we’ll be able to deliver you updates and upgrades in a consistent manner that will keep your data safe. Deviation from these topologies reduces our capability to help you when things don’t work as they should, and that makes us sad.

We know that many of our customers are talented and knowledgeable technical people, and have experience running many of the components that are included as part of Private Chef. Your environment may have an existing runbook or best practice for any or all of these components individually already. We ask that you treat your Private Chef system as its own entity for optimal performance.

We value your feedback and input on any questions, concerns, and issues you have with Private Chef. Our team is open to suggestions and community participation is encouraged, especially on our IRC channel and at our events. While we are not able to make extensive customizations for Private Chef installations, your feedback will help us decide on future development on the product that we can officially provide support for.

The rest of this document serves as a FAQ of commonly requested modifications to Private Chef.


SAN-Backed Storage

We realize that many of our customers have production environments that provide support for highly available external storage systems. There are a number of such systems available commercially, and providing extensive customer support for Private Chef on all of them is outside our scope.

If your team decides that your Private Chef back-end must be attached to external storage, please let your Opscode sales representative know as early as possible, and notify your installation consultant if one has been assigned.

The tooling provided with Private Chef and private-chef-ctl will not be modified to be made aware of your environment, which means that the automatic failover of your system will become a manual process or otherwise automated by your team. Such modifications should be carefully documented, as any upgrade process to future versions of Private Chef will need to include those changes. It is not recommended that you make extensive modifications to the software delivered in /opt/opscode.


Scaling Individual Components

The topology options supported by Opscode allow for a wide range of successful Private Chef environments, and are not likely to require any modifications even for our larger customers.

The individual components of the Private Chef server are commonly available technologies; we expect that many of our customers are already familiar with them. However, Opscode has taken the guesswork out of configuring Private Chef and given you configurations that represent everything we have learned while building and running Hosted Chef.

Scaling individual components presents configuration and failover challenges to your Private Chef environment, and is not supported. We discourage our customers from going rogue and scaling things anyway; please give us a chance to work on your scaling issues before deviating your environment from the supported technologies.

If you find your environment is having problems converging all of your nodes on the schedule you want them to converge on, please contact our Support team and file a ticket. There may be an underlying cause that we are already aware of or suspect that can be fixed in a timely manner. If not, our support folks will work with the members of our engineering team who know the components you are having issues with to determine a course of action.

We want any and all modifications made to Private Chef to make sense, and we want to be able to support them for you when you need us. We also want to be able to provide you with updates and upgrades that happen as smoothly as possible. We can best meet those goals if we are able to fashion sustainable solutions to customer issues as they arise.


Where’s the MySQL?

As of this writing, your Private Chef installation will run with a PostgreSQL back-end. This decision was the culmination of a lengthy performance review of various data store technologies, as well as a careful review of the legalities of shipping you Private Chef with components of differing license types.

At some point in the not-far-off future, MySQL will be supported as a datastore option in place of PostgreSQL for Private Chef installations. When we are ready to fully support MySQL for our customers, we will provide you with a supported migration path to ensure that your environment is fully functional after the switch.

Until that time, all Private Chef installations will run PostgreSQL. We will be letting our customers know when MySQL will be available.


X Technology is Better!

One thing we definitely love about technology and our community is how many ways there are to accomplish a goal. We’ve learned a lot about what works best for Chef, and over its short lifetime have made various fundamental changes to the technologies we use. It’s totally awesome that you love technology X, but we don’t feel it’s a good fit for us at this time. We might look at it in the future, or we may have already cooked something up in our test kitchens that didn’t meet our needs. It’s still cool, though!


