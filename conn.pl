#!/usr/bin/perl
# MadTed mad666ted@gmail.com
# script for displaying active connections from
# locale running crytocurrencies nodes
use strict;
use warnings;
$| = 1;	 # autoflush for immediate console output
print "\n";
while (1) {
	print "aktive Verbindungen der\n";
	print "laufenden Crypto Full-Nodes?\n";
	print "============================\n";
	#
	my (@lines, @btc_ip, @ltc_ip, @xmr_ip, @eth_ip) = ();
	my ($btc, $ltc, $xmr, $eth) = (0,0,0,0);
	my $line = "";
	my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime(time);
	#
	# command for getting port connections
	@lines = `sudo netstat -tulanp | sort -n -k 7`;
	# print @lines; # only for debug
	# count active connections and store it
	foreach $line ( @lines ) {
		if ( $line =~ /VERBUNDEN.*bitcoind/ ) {
			$btc++;
			@btc_ip = (@btc_ip, $line);
		}
		elsif ( $line =~ /VERBUNDEN.*litecoind/ ) {
			$ltc++;
			@ltc_ip = (@ltc_ip, $line);
		}
		elsif ( $line =~ /VERBUNDEN.*monerod/ ) {
			$xmr++;
			@xmr_ip = (@xmr_ip, $line);
		}
		elsif ( $line =~ /VERBUNDEN.*geth/ ) {
			$eth++;
			@eth_ip = (@eth_ip, $line);
		}
	}

	print "BTC \t $btc \t LTC \t $ltc\n";
	print "XMR \t $xmr \t ETH \t $eth\n";
	print "============================\n";
	#
	# write once active connections to file, append mode
	# for future processing, e.g. adding IP's to node's config (addnode ...)
	# btc
	if (@btc_ip) {
		open( fh1, ">>", "btc_ip.txt") or die "Cannot open [btc_ip.txt] for write";
		($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime(time);
		$mon++;
		$year += 1900;
		print fh1 "Date: $mday.$mon.$year $hour:$min h $sec s\n";	
		#	
		chomp(@btc_ip);	
		print fh1 join ("\n", @btc_ip);
		print fh1 "\n====================\n";
		close fh1;
	}
	# ltc
	if (@ltc_ip) {
		open( fh1, ">>", "ltc_ip.txt") or die "Cannot open [ltc_ip.txt] for write";
		($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime(time);
		$mon++;
		$year += 1900;
		print fh1 "Date: $mday.$mon.$year $hour:$min h $sec s\n";	
		#	
		chomp(@ltc_ip);	
		print fh1 join ("\n", @ltc_ip);
		print fh1 "\n====================\n";
		close fh1;
	}
	# xmr
	if (@xmr_ip) {
		open( fh1, ">>", "xmr_ip.txt") or die "Cannot open [xmr_ip.txt] for write";
		($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime(time);
		$mon++;
		$year += 1900;
		print fh1 "Date: $mday.$mon.$year $hour:$min h $sec s\n";	
		#	
		chomp(@xmr_ip);	
		print fh1 join ("\n", @xmr_ip);
		print fh1 "\n=xmr_ip.txt===================\n";
		close fh1;
	}
	# eth
	if (@eth_ip) {
		open( fh1, ">>", "eth_ip.txt") or die "Cannot open [eth_ip.txt] for write";
		($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime(time);
		$mon++;
		$year += 1900;
		print fh1 "Date: $mday.$mon.$year $hour:$min h $sec s\n";	
		#	
		chomp(@eth_ip);	
		print fh1 join ("\n", @eth_ip);
		print fh1 "\n====================\n";
		close fh1;
	}
	#
	# just a nice output
	# run evry 66s
	($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime(time);
	print "$hour:$min h $sec s ";
	for ( 1 .. 11 ) {
		sleep 6;
		print ".";
	}
	print "\n";
}

exit;

