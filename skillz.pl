#!/usr/bin/perl
use warnings;
use strict;

my @skills = (
#
# Programming languages
#
"Perl",
"Ruby",
"Rails",
"Cocoa",
"M4",
"PHP",
"Java",
#
# Source code management
#
"git",
"svn",
"cvs",
"rcs",
#
# Semantic Web
#
"Semantic Web",
"RDF",
"RDFa",
"Metadata",
#
# Web content formatting languages
#
"HTML",
"XHTML",
"CSS",
"XHTML+RDFa",
"Javascript",
"Apache",
#
# SysAdmin
#
"Systems Administration",
"Sendmail",
"Shell Scripting",
"Solaris Administration",
"Linux Administration",
#
# Databases
# 
"mySQL",
"postgreSQL",
#
# i18n
"Internationalization(i18n)",
"Unicode",
"Character Sets",
#
# Programming technique
#
"metaprogramming",
"unit testing",
"object-oriented design",
#
# Tools
#
"vim",
"vi",
"emacs",
#
# Fun!
#
"recreational linguistics"
);

for ( @skills )
{
  next if (/^#/);
  my $blurb = <<EOT
   <cv:hasSkill>
     <cv:Skill>
       <cv:skillName>$_</cv:skillName>
       <cv:skillLevel></cv:skillLevel>
       <cv:skillLastUsed></cv:skillLastUsed>
       <cv:skillYearsExperience></cv:skillYearsExperience>
     </cv:Skill>
   </cv:hasSkill>
EOT
;
  print $blurb;
}
