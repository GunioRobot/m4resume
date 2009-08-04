divert(-44)
------------------------------------------------------------------------------
For job as Cisco mail sysadmin
------------------------------------------------------------------------------

define(`__RDFA_CISCO_RECENT_TITLE', 
`ifdef(`do_rdfa',
  `<span property="cv:jobTitle">Senior ITE</span>',
  `Senior ITE')')

define(`__RDFA_CISCO_RECENT_DESC', 
`ifdef(`do_rdfa',
  `<span property="cv:jobDescription">CCT</span>',
  `CCT')')


define(`__RDFA_CISCO_RECENT_SDATE',
`ifdef(`do_rdfa',
  `<span property="dc:date">200-04</span>',
  `2000-04')')

define(`__RDFA_CISCO_RECENT_EDATE',
`ifdef(`do_rdfa',
  `<span property="dc:date">2009-07</span>',
  `2009-07')')

changequote


define(`RDFA_CISCO_RECENT_ACHIEVEMENTS',`
`Authored 5–point, 2–year legacy systems migration strategy to move all backbone mail services to a standardized, turnkey environment.  Implementation completed 2008',
`Led technical team responsible forum and blogging framework deployment',
`Created business requirements document and RESTful API specification for new generic list-abstraction repository and interface: allows disparate downstream systems (including mail) to access and utilize the same list structures for mail, calendar, voice mail, meeting invite, etc.  Implemented 2009-05',
`Created standard specification for all applications environments with respect to standard, accepted mail routing behavior: policy document, Sendmail.mc for Solaris, Linux',
`Created registry process and web tool for application host systems that use e-mail as transport layer. This should help identify / remediate non-compliant systems that are using our data through unsupported interfaces so that we can help them come into compliance',
`Wrote script to deploy core mailing list host data repository, web interface, mail interface, and build scripts from M4 macro definitions + Bash + Perl. This allows an entire environment to be built and deployed into a segregated space by configuring a single macro specification file',
`Collaborated with University of Texas  Information, Risk, and Operations Management MIS steering committee to specify next generation of skill-set foci',
`Through efforts in the previous 6 years, reduced head-count to 1 full time employee and a vendor team.  Net savings in excess of `$'320`,'000'
')


changequote`'dnl

divert`'dnl
achieve(format_place(__RDFA_CISCO),
      format_job(`__RDFA_CISCO_RECENT_TITLE: __RDFA_CISCO_RECENT_DESC'), 
      format_dates(`__RDFA_CISCO_RECENT_SDATE - __RDFA_CISCO_RECENT_EDATE'), 
      cv_note_ify(RDFA_CISCO_RECENT_ACHIEVEMENTS))dnl

divert(-44)
------------------------------------------------------------------------------
For job as Cisco mail sysadmin
------------------------------------------------------------------------------

define(`__RDFA_CISCO_1_TITLE', 
`ifdef(`do_rdfa',
  `<span property="cv:jobTitle">SYSAD</span>',
  `SYSAD')')

define(`__RDFA_CISCO_1_TITLEB', 
`ifdef(`do_rdfa',
  `<span property="cv:jobTitle">ITD</span>',
  `ITD')')


define(`__RDFA_CISCO_1_DESC', 
`ifdef(`do_rdfa',
  `<span property="cv:jobDescription">EMS</span>',
  `I.T. Engineer')')


define(`__RDFA_CISCO_1_SDATE',
`ifdef(`do_rdfa',
  `<span property="dc:date">2001-04</span>',
  `2001-04')')

define(`__RDFA_CISCO_1_EDATE',
`ifdef(`do_rdfa',
  `<span property="dc:date">2005-06</span>',
  `2005-06')')



define(`RDFA_CISCO_1_ACHIEVEMENTS',``Member of 5-person team changed with  backbone mail systems upon which ~1bn/month mail flow.  Build anti-spam, anti-malware solution',dnl
`Managed fleet of 10 HP servers, a dozen Mirapoint appliances',dnl
`Migrated legacy environment of spool-based and Mirapoint-based clients to Exchange 2000',
`Designed Out of Office scanner / handler to prevent MS Exchange from feeding spam engines / spamming external mailing lists / causing infinite mail storm loops due to its "everyone gets a bounce" design',
`Established messaging team standard Perl module set / CVS repository / Subversion repository',
`Built common framework for Sendmail-based processing, filtration, and re-routing.  Built 3 special-use appliances using single polymorphic code base.  Available at <a href="http://code.google.com/p/cmailguard/">Google Code CMailguard</a>',
`Built software solutions for turnkey rebuild of core infrastructure components to increase resiliency in event of attrition or disaster.  Build entire deploy suite in M4 which allowed customization to disaster environment by changing &lt; 10 values',
`Migrated primary web interface for list data repository from non–validating HTML 4 Frameset specification to XHTML–compliant, CSS–based, Template::Toolkit design.  User interface performed 600% faster'')dnl


changequote`'dnl

divert`'dnl
achieve(format_place(__RDFA_CISCO),
      format_job(`__RDFA_CISCO_1_TITLE / __RDFA_CISCO_1_TITLEB: __RDFA_CISCO_1_DESC'), 
      format_dates(`__RDFA_CISCO_1_SDATE - __RDFA_CISCO_1_EDATE'), 
      cv_note_ify(RDFA_CISCO_1_ACHIEVEMENTS))dnl
divert(-44)

------------------------------------------------------------------------------
For job in Cisco support
------------------------------------------------------------------------------
define(`__RDFA_CISCO_2_TITLE', 
`ifdef(`do_rdfa',
  `<span property="cv:jobTitle">ITA</span>',
  `ITA')')

define(`__RDFA_CISCO_2_TITLEB', 
`ifdef(`do_rdfa',
  `<span property="cv:jobTitle">ITA</span>',
  `ITA')')


define(`__RDFA_CISCO_2_DESC', 
`ifdef(`do_rdfa',
  `<span property="cv:jobDescription">Engineering Support Analyst</span>',
  `Engineering Support Analyst')')


define(`__RDFA_CISCO_2_SDATE',
`ifdef(`do_rdfa',
  `<span property="dc:date">2000-06</span>',
  `2002-04')')

define(`__RDFA_CISCO_2_EDATE',
`ifdef(`do_rdfa',
  `<span property="dc:date">2001-04</span>',
  `2005-06')')

define(`RDFA_CISCO_2_ACHIEVEMENTS',`dnl
`Tracked top 5 issues quarter to quarter. After 3 quarters of implementation, support calls dropped, on average, 100 cases per quarter',
`Identified training gaps: created training and delivered to employees in 3 theatres',
`Moved client satisfaction rating from 74% to 95%, the highest seen to that date',
`Developed lead + application owner support relationship still in use today. After performing liaison role, messaging team requested my transition to their team',
`Designed web-based Web-vacation mail tool. Tool reduced support calls from 500 per quarter to 25. Net savings of `$'30`,'000 USD estimated savings per annum realized'
')dnl



divert`'dnl
achieve(format_place(__RDFA_CISCO),
      format_job(`__RDFA_CISCO_2_TITLE: __RDFA_CISCO_2_DESC'), 
      format_dates(`__RDFA_CISCO_2_SDATE - __RDFA_CISCO_2_EDATE'), 
      cv_note_ify(RDFA_CISCO_2_ACHIEVEMENTS))dnl
