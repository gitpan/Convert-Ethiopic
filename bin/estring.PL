#!/usr/bin/perl

use LiveGeez::Request;
use Convert::Ethiopic::Cstocs;

main:
{
local ( $r ) = LiveGeez::Request->new;

	ReadParse ( \%input );
	#
	# On web we assume GFZemen as the default output system if none is
	# specified.  At the command line we will set UTF8 as the default
	# output system when none is specified.
	#
	$input{sysOut} = "UTF8" if ( !$input{sys} && !$input{sysOut} );
	$r->ParseInput ( \%input );
	undef ( %input );

	my ( $c ) = Convert::Ethiopic::Cstocs->new ( $r->{sysIn}, $r->{sysOut} );

	print &$c ($r->{string}), "\n";
	# print $c->conv( $r->{string} );  # this works too...

}


__END__


=head1 NAME

estring -- print date and time in Amharic or Tigrigna with locale options

=head1 SYNOPSIS

  estring.pl string="selam"


=head1 DESCRIPTION

estring.pl is the Perl analogue of "g2" which comes with the LibEth library.
estring.pl also requires LibEth and the Ethiopic:: module which is itself an
interface to LibEth.  estring.pl does not yet fully emulate the capabilities of
LibEth g2 but that is an eventual goal.  Intended for demonstrative purposes.

=head1 SEE ALSO

perl(1).  Et(3).  L<http://libeth.netpedia.net|http://libeth.netpedia.net>

=head1 AUTHOR

Daniel Yacob,  L<LibEth@EthiopiaOnline.Net|mailto:LibEth@EthiopiaOnline.Net>

=cut
