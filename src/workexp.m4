divert(-44)
define(`ITE', `I.T. Engineer')
define(`ITE', `I.T. Analyst')
define(`ITD', `I.T. Developer')
define(`SYSAD', `Systems Administrator')
define(`EMS', `Enterprise Messaging Systems')

define(`__RDFA_CISCO', 
`ifdef(`do_rdfa',
	`<a href="http://www.cisco.com" rel="cv:workplaceHomepage cv:employedIn">Cisco Systems</a>',
	`<a href="http://www.cisco.com">Cisco Systems</a>')')

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

define(`cv_note_ify',
`ifdef(`do_rdfa', 
`changequote(`[',`]')dnl
ifelse($#, 0, , $#,1,[`<span property="cv:Notes">$1</span>'],
[``<span property="cv:Notes">$1</span>'',cv_note_ify(shift($@))`dnl']
changequote`'dnl
)',`Not RDFA')')

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
