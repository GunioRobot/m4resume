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



define(`RDFA_CISCO_1_ACHIEVEMENTS',``Member of 5-person team changed with  backbone mail systems upon which ~1bn/month mail flow.  Build anti-spam, anti-malware solution.',dnl
`Managed fleet of 10 HP servers, a dozen Mirapoint appliances.',dnl
`Migrated legacy environment of spool-based and Mirapoint-based clients to Exchange 2000.',
`Designed Out of Office scanner / handler to prevent MS Exchange from feeding spam engines / spamming external mailing lists / causing infinite mail storm loops due to its "everyone gets a bounce" design.',
`Established messaging team standard Perl module set / CVS repository / Subversion repository',
`Built common framework for Sendmail-based processing, filtration, and re-routing.  Built 3 special-use appliances using single polymorphic code base.  Available at <a href="http://code.google.com/p/cmailguard/"></a>',
`Built software solutions for turnkey rebuild of core infrastructure components to increase resiliency in event of attrition or disaster.  Build entire deploy suite in M4 which allowed customization to disaster environment by changing &lt; 10 values',
`Migrated primary web interface for list data repository from non–validating HTML 4 Frameset specification to XHTML–compliant, CSS–based, Template::Toolkit design.  User interface performed 600% faster.'')dnl


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
  `SYSAD')')

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
`Tracked top 5 issues quarter to quarter. After 3 quarters of implementation, support calls dropped, on average, 100 cases per quarter.',
`Identified training gaps: created training and delivered to employees in 3 theatres.',
`Moved client satisfaction rating from 74% to 95%, the highest seen to that date',
`Developed lead + application owner support relationship still in use today. After performing liaison role, messaging team requested my transition to their team.',
`Designed web-based Web-vacation mail tool. Tool reduced support calls from 500 per quarter to 25. Net savings of `$'30`,'000 USD estimated savings per annum realized.'
')dnl



divert`'dnl
achieve(format_place(__RDFA_CISCO),
      format_job(`__RDFA_CISCO_2_TITLE / __RDFA_CISCO_2_TITLEB: __RDFA_CISCO_2_DESC'), 
      format_dates(`__RDFA_CISCO_2_SDATE - __RDFA_CISCO_2_EDATE'), 
      cv_note_ify(RDFA_CISCO_2_ACHIEVEMENTS))dnl
