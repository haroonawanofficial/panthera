#***************************************************************************************#
#----------------------- EULA LICENSE AGREEMENT NOTICE ---------------------------------#
#1. This software uses EULA based software agreement that grants users rights to use for#
#any purpose, modify and redistribute creative works about this software.               #
#2. This software comes in "is-as" warranty, author "Haroon Awan" take no responsbility #
#what you do with by/this software. Your free to use this software as it is for any     #
#purpose that suites as long as it is not related to crime.                             #
#***************************************************************************************#

#!/usr/bin/env perl
use LWP::UserAgent;
no warnings 'uninitialized';
use Term::ANSIColor;
$ua = LWP::UserAgent->new();
$ua->agent("Mozilla/5.0 (Windows; U; Windows NT 5.1; fr; rv:1.9.1) Gecko/20090624 Firefox/3.5");
system "clear";
print color('bold red');
print "\n\n					   	 	Project: Panthera\n";
print "\n						        Coder: Haroon Awan\n\n\n";
print color('bold yellow');
print "[ + ] Version: 		Open Source Edition 1.0a\n";
print "[ + ] Contact: 		mrharoonawan\@gmail\.com \n";
print "[ + ] Environment: 	Perl under Kali Linux\n";
print "[ + ] Github: 		Https://www.github.com/haroonawanethicalhacker\n";
print "[ + ] Design Scheme: 	DNS Recursion vulernability checker for DNS cache poisoning\n";
print "[ + ] Usage: 		$0 url.com\n\n";
print color('reset');
print color('bold green');
$site="$ARGV[0]";

print "[ + ] Enter url.com ... : "; 
my $url = <STDIN>;
chomp $url;
my $choice = <STDIN>;
print "\n[ + ] Contacting target ...\n";
sleep (2);
print "\n[ + ] Please wait, starting DNS cache poisoning check using Nmap ...\n";
print "\n[ + ] Collecting output, it will take a minute or more, depending on the data ...\n\n";
$sys = system("nmap -sU -p53 --script=dns-recursion '$url' ") ;
print "\n";
exit;
