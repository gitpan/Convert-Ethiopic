package Convert::Ethiopic::System;
require 5.000;
require Exporter;

@ISA = qw(Exporter);
@EXPORT = qw(
			$noOps
			$debug
			$ethOnly
			$gColon
			$qMark
			$gSpace
			$ungeminate
			$uppercase

			$WITHETHHOUR
			$WITHETHDATE
			$WITHQEN
			$WITHETHYEAR
			$WITHNETEB
			$WITHAM
			$WITHSLASH
			$WITHDAYCOMMA
			$WITHUTF8

			$unicode
			$utf8
			$sera
			$image

			$amh
			$eng
			$gez
			$orm
			$tir
			);

require Convert::Ethiopic;
use HTML::Entities;


sub enumerate
{
local ($index) = 0;

  foreach (@_) {
	  $_ =  $index++;
  }
}

local ( $enumerated ) = 0;

if ( !$enumerated ) {

$enumerated = 1;

enumerate ( $LESys, $LESysNum, $LESysTV, $LEFontNum, $HasNum, $HTMLName );

enumerate ( $nocs, $acis, $acuwork, $addisword1, $addisword2, $alpas, $branai, $branaii, $cbhalea, $cbhaleb, $dehai, $dejene1, $dejene2, $ecoling, $ed, $enhpfr, $ethcitap, $ethcitas, $ethcitau, $ethiome, $ethiomex, $ethiop, $ethiopic1, $ethiopic2, $ethiosys, $ethiosysx, $fidelxtr1, $fidelxtr2, $gezedit, $gezedit98, $gezfont, $gezfree1, $gezfree2, $gezigna, $gezi, $gezii, $geznewa, $geznewb, $geztype, $ies, $image, $iso, $jis, $junet, $laser, $mainz, $monotype1, $monotype2, $monotype3, $monoalt, $mononum, $muletex, $nci, $ncic, $ncic_et, $omnitech, $powergez, $powergeznum, $qubee, $samwp, $sam98, $sera, $sil1, $sil2, $sil3, $tfanus, $tfanusnew, $unicode, $visualgez, $all );

enumerate ( $notv, $clike, $decimal, $dos, $java, $uname, $uplus, $utf7, $utf8, $utf16, $zerox );

%FontInfo = (
  'ALXethiopian' 		=>	[  'acuwork',	   $acuwork,	     0,	0,	0,	'\\Acu\\wrq'],
  'Addis'  				=>	['addisword',	$addisword1,	     0,	0,	1,	'adis\\Word\\'],
  'Addis98'  			=>	[  'addis98',	     $sam98,	     0,	0,	0,	'adis98'],
  'AddisWP'  			=>	[  'addiswp',	     $samwp,	     0,	0,	0,	'adis\\WP\\'],
  'ET-Saba'  			=>	[    'alpas',	     $alpas,	     0,	0,	0,	'alpas'],
  'Brana' 				=>	[    'brana',	    $branai,	     0,	0,	1,	'brana'],
  'Amharic-A' 			=>	[   'cbhale',	   $cbhalea,	     0,	0,	1,	'amarNa\\A\\'],
  'AmharQ' 				=>	[ 'geezedit',	   $gezedit,	     0,	1,	0,	'amarNa\\Q\\'],
  'Agaw' 				=>	[   'dejene',	    $dejene,	     0,	0,	0,	'dejnE'],
  'clike'				=>	[    'clike',      $unicode,		 0,	0,	1,	'\\c-like\\'],
  'Clike'				=>	[    'Clike',      $unicode,		 0,	0,	1,	'\\C-LIKE\\'],
  'ecoling' 			=>	[  'ecoling',	   $ecoling,		 0,	0,	0,	'ecoling'],
  'ed' 					=>	[       'ed',	        $ed,		 0,	0,	1,	'\\Ed\\'],
  'ethiome' 			=>	[  'ethiome',	   $ethiome,		 0,	0,	1,	'ityo\\ME\\'],
  'ethiop' 				=>	[   'ethiop',	    $ethiop,		 0,	0,	1,	'ityoP'],
  'Ethiopic'			=>	[ 'ethiopic',	 $ethiopic1,		 0,	0, 	0,	'ityoPik'],
  'Ethiopia' 			=>	[ 'ethiosys',	  $ethiosys,		 0,	0,	1,	'ityo\\Systems\\ ityoPya'],
  'EthiopiaSlanted' 	=>	[ 'ethiosys',	  $ethiosys,		 0,	2,	1,	'ityo\\Systems\\ ityoPya'],
  'EthiopiaAnsiP' 		=>	[ 'ethiosys',	  $ethiosys,		 0,	4,	1,	'ityo\\Systems\\ ityoPya\\ANSI\\'],
  'Washra' 				=>	[ 'ethiosys',	  $ethiosys,		 0,	6,	1,	'ityo\\Systems\\ waxra'],
  'Washrasl' 			=>	[ 'ethiosys',	  $ethiosys,		 0,	8,	1,	'ityo\\Systems\\ waxra'],
  'Wookianos' 			=>	[ 'ethiosys',	  $ethiosys,		 0,	10,	1,	'ityo\\Systems\\ wqyanos'],
  'Yebse' 				=>	[ 'ethiosys',	  $ethiosys,		 0,	12,	1,	'ityo\\Systems\\ ybSe'],
  'Fidel' 				=>	[    'fidel',	     $fidel,		 0,	0,	1,	'fidel'],
  'FirstTime' 			=>	[ 'geezfree',	  $gezfree1,		 0,	0,	1,	'gI2z\\Free\\'],
  'GeezEditAmharicP' 	=>	[ 'geezedit', 	   $gezedit,		 0,	0,	0,	'gI2z\\Edit\\'],
  'GeezAddis' 			=>	[ 'geezfont',	   $gezfont,		 0,	0,	1,	'gI2z-adis'],
  'geezBasic' 			=>	[ 'geezfont',	   $gezfont,		 0,	1,	1,	'gI2z\\Basic\\'],
  'geezLong' 			=>	[ 'geezfont', 	   $gezfont,		 0,	2,	1,	'gI2z\\Long\\'],
  'GeezThin' 			=>	[ 'geezfont', 	   $gezfont,		 0,	3,	1,	'gI2z\\Thin\\'],
  'GFZemen' 			=>	[ 'geezfree',	  $gezfree1,		 0,	0,	1,	'gI2z\\Free\\'],
  'Geezigna'  			=>	[ 'geezigna',	   $gezigna,		 0,	0,	0,	'gI2zNa'],
  'Geez'  				=>	[     'geez',	      $gezi,		 0,	0,	1,	'gI2z'],
  'GeezNewA'  			=>	[   'geezab',	   $geznewa,		 0,	0,	1,	'gI2z\\New\\'],
  'GeezSindeA'  		=>	[   'geezab',	   $geznewa,		 0,	2,	1,	'gI2z\\Sinde\\'],
  'GeezA'  				=>	[   'geezab',	   $geznewa,		 0,	4,	1,	'gI2z'],
  'GeezDemo'  			=>	[   'geezab',	   $geznewa,		 0,	7,	0,	'gI2z\\Demo\\'],
  'GeezNet'  			=>	[   'geezab',	   $geznewa,		 0,	8,	0,	'gI2z\\Net\\'],
  'GeezType'  			=>	[ 'phonetic',	   $geztype,		 0,	0,	0,	'gI2\\Type\\'],
  'Geez-1'  			=>	[ 'powergez',	  $powergez,		 0,	0,	1,	'\\Power\\gI2z'],
  'Geez-2'  			=>	[ 'powergez',	  $powergez,		 0,	1,	1,	'\\Power\\gI2z'],
  'Geez-3'  			=>	[ 'powergez',	  $powergez,		 0,	2,	1,	'\\Power\\gI2z'],
  'HahuLite'  			=>	[     'acis',	      $acis,		 0,	0,	1,	'hehu \\Lite\\'],
  'HahuGothic'  		=>	[     'acis',	      $acis,		 0,	1,	1,	'hehu \\Lite Gothic\\'],
  'HahuSerif'  			=>	[     'acis',	      $acis,		 0,	2,	1,	'hehu \\Lite Serif\\'],
  'HahuTimes'  			=>	[     'acis',	      $acis,	     0,	3,	1,	'hehu \\Lite Times\\'],
# 'image' 				=>	[    'image',	     $image,	     0,	0,	1,	'\\Image Fonts\\'],
# 'Image' 				=>	[    'image',	     $image,	     0,	0,	1,	'\\Image Fonts\\'],
  'image' 				=>	[ 'geezfree',	  $gezfree1,	     0,	0,	1,	'gI2z\\Free\\'],
  'Image' 				=>	[ 'geezfree',	  $gezfree1,	     0,	0,	1,	'gI2z\\Free\\'],
  'java'				=>	[     'java',	   $unicode,	 $java,	0,	1,	'\\Java\\'],
  'Java'				=>	[     'java',	   $unicode,	 $java,	0,	1,	'\\Java\\'],
  'JIS' 				=>	[      'jis',	       $jis,	     0,	0,	1,	'\\JIS\\'],
  'JUNET' 				=>	[    'junet',	     $junet,	     0,	0,	1,	'\\JUNET'],
  'laser'  				=>	[    'laser',		 $laser,	     0,	0,	0,	'\\Laser\\amarNa'],
  'Amharic'  			=>	[     'mono',	 $monotype1,	     0,	0,	1,	'\\MonoType\\amarNa'],
  'AmharicBook'  		=>	[     'mono',	 $monotype1,	     0,	3,	1,	'\\MonoType\\amarNa_\\Book\\'],
  'Amharic_Alt' 		=>	[  'monoalt',	   $monoalt,	     0,	0,	1,	'\\MonoType\\amarNa_\\Alt\\'],
  'ET-NCI' 				=>	[      'nci',      	   $nci,	     0,	0,	0,	'it-\\NCI\\'],
  'ET-NEBAR' 			=>	[      'nci',      	   $nci,	     0,	2,	0,	'it-\\NCI\\'],
  'ET-SAMI' 			=>	[      'nci',      	   $nci,	     0,	4,	0,	'it-\\NCI\\'],
  'AGF-Zemen' 			=>	[     'ncic', 	      $ncic,	     0,	0,	0,	'agafari-zemen'],
  'AGF-Dawit' 			=>	[     'ncic',	      $ncic,	     0,	1,	0,	'agafari-dawit'],
  'AGF-Ejji-Tsihuf' 	=>	[     'ncic',	      $ncic,	     0,	2,	1,	'agafari-Iji-Shuf'],
  'AGF-Rejim' 			=>	[     'ncic',	      $ncic,	     0,	3,	0,	'agafari-rejm'],
  'AGF-Yigezu-Bisrat' 	=>	[     'ncic', 		  $ncic,	     0,	3,	0,	'agafari-ygezu-bsrat'],
  'AmharicKechin'  		=>	[ 'omnitech',	  $omnitech,	     0,	0,	0,	'amarNa qCn'],
  'AmharicYigezuBisrat'	=> 	[ 'omnitech',	  $omnitech,	     0,	1,	0,	'amarNa ygzu-bsrat'],
  'AmharicGazetta' 		=>	[ 'omnitech',	  $omnitech,	     0,	2,	0,	'amarNa gezETa'],
  'sera' 				=>	[     'sera',	      $sera,	     0,	0,	1,	'\\SERA\\'],
  'TfanusGeez01'  		=> 	[   'tfanus',	    $tfanus,	     0,	0,	1,	'\\T\\fanus'],
  'GeezBausi'  			=>	[   'tfanus',	    $tfanus,	     0,	1,	1,	'gI2z\\Bausi\\'],
  'Amharisch'  			=>	[   'tfanus',	    $tfanus,	     0,	2,	1,	'\\Amharisch\\'],
  'EthioSoft'  			=>	[   'tfanus',	    $tfanus,	     0,	3,	1,	'ityo\\Soft\\'],
  'GeezTimesNew'  		=>	[   'tfanus',	    $tfanus,	     0,	4,	1,	'gI2z\\TimesNew\\'],
# 'ENHPFR'				=>	[   'enhpfr',	    $enhpfr,	     0,	0,	1,	'\\ENHPFR\\'],
  'ENHPFR' 				=>	[ 'geezfree',	  $gezfree1,	     0,	0,	1,	'gI2z\\Free\\'],
  'UTF7' 				=>	[  'unicode',	   $unicode,	 $utf7,	0,	1,	'\\UTF7\\'],
  'UTF8' 				=>	[  'unicode',	   $unicode,	 $utf8,	0,	1,	'\\UTF8\\'],
  'utf16'  				=>	[  'unicode',	   $unicode,	$utf16,	0,	1,	'\\UTF16\\'],
  'unicode' 			=>	[  'unicode',	   $unicode,	$utf16,	0,	1,	'\\UTF16\\'],
  'VG2-Main'			=>	[  'visgeez',	 $visualgez,	     0,	0,	0,	'\\Visual\\gI2z'],
  'VG2-Agazian'			=>	[  'visgeez',	 $visualgez,	     0,	1,	0,	'\\Visual\\gI2z'],
  'VG2-Title'	 		=>	[  'visgeez',	 $visualgez,	     0,	2,	0,	'\\Visual\\gI2z'],
  'debug' 				=>	[    'debug',	      $sera,	     0,	0,	1,	'\\Debugging\\']
 );


%TransferVariant = ( notv      => $notv,
					 clike     => $clike,
					 decimal   => $decimal,
					 dos       => $dos,
					 java      => $java,
					 uname     => $uname,
					 uplus     => $uplus,
					 utf7      => $utf7,
					 utf8      => $utf8,
					 utf16     => $utf16,
					 zerox     => $zerox
);


enumerate ($amh, $eng, $gez, $orm, $tir);

%ISOLanguages = ( am        => $amh,
			 	  en	    => eng,
				  ti        => $tir,
				  om        => $orm,
				  gz	    => $gez,
				  amh       => $amh,
				  eng       => $eng,
				  orm       => $orm,
				  tir       => $tir,
				  gez       => $gez,
);


$noOps        =   0;
$aynIsZero    =   1;
$debug        =   2;
$ethOnly      =   4;
$gColon       =   8;
$qMark        =  16;
$gSpace       =  32;
$ungeminate   =  64;
$uppercase    = 128;


$WITHETHHOUR  =   1; # /* Ihu Ter 15 11:13:50 EET 1990         */
$WITHETHDATE  =   2; # /* Ihu Ter `10`5 17:13:50 EET 1990      */
$WITHQEN      =   4; # /* Ihu Ter 15 qen 17:13:50 EET 1990     */
$WITHETHYEAR  =   8; # /* Ihu Ter 15:11:13:50 EET `10`9`100`90 */
$WITHNETEB    =  16; # /* Ihu:Ter:15:11:13:50:EET:1990         */
$WITHAM       =  32; # /* Ihu Ter 15 11:13:50 EET 1990 `a.m    */
                     # /*       use `ameta mhret, `ameta `alem */
$WITHSLASH    =  64; # /* Ihu Ter 15 11:13:50 EET 1990 `a/m    */
$WITHDAYCOMMA = 128; # /* Ihu, Ter 15 11:13:50 EET 1990 `a/m   */
$WITHUTF8     = 512; # /* Return UTF8 Encoded Names            */

}  #  end if ( !$enumerated )


sub LangNum
{
my $self = shift;
local ( $lang ) = shift;


	$self->{lang}    = $lang if ( $lang );

	$self->{langNum} = $ISOLanguages{$self->{lang}}
	
}


sub LESys 
{
my $self = shift;
local ( $sysName ) = shift;


	$self->{sysName} = $sysName if ( $sysName );

	$self->{LESys}   = $FontInfo{$self->{sysName}}[$LESys];

}


sub SysNum
{
my $self = shift;
local ( $sysName ) = shift;


	$self->{sysName} = $sysName if ( $sysName );

	$self->{sysNum}  = $FontInfo{$self->{sysName}}[$LESysNum];

}


sub XferNum
{
my $self = shift;
local ( $xfer ) = shift;


	$self->{xfer}    = $xfer if ( $xfer );

	$self->{xferNum} = $TransferVariant{$self->{xfer}};

}


sub SysXfer
{
my $self = shift;
local ( $xfer ) = shift;


	if ( $xfer ) {
		$self->{xfer} = $xfer;
		$self->XferNum;
	} else {
		$self->{xferNum} = $FontInfo{$self->{sysName}}[$LESysTV];

		foreach $key (keys %TransferVariant) {
			if ( $self->{xferNum} == $TransferVariant{$key} ) {
				$self->{xfer} = $key;
				last;
			}
		}
	}

}


sub HTMLName
{
my $self = shift;
local ( $sysName ) = shift;


	$self->{sysName}  = $sysName if ( $sysName );

	return ( $self->{HTMLName} = $FontInfo{$self->{sysName}}[$HTMLName] );

}


sub FontNum
{
my $self = shift;
local ( $sysName ) = shift;


	$self->{sysName} = $sysName if ( $sysName );

	$self->{fontNum} = $FontInfo{$self->{sysName}}[$LEFontNum];

}


sub HasENumbers
{
my $self = shift;
local ( $sysName ) = shift;


	$self->{sysName} = $sysName if ( $sysName );

	return ( $self->{HasENumbers} = $FontInfo{$self->{sysName}}[$HasNum] );

}


sub new
{
my $class = shift;
my $self  = {};
	
	$blessing = bless $self, $class;

	$self->{sysName} = shift;
	$self->SysNum;

	return ($blessing);
}
#########################################################
# Do not change this, Do not put anything below this.
# File must return "true" value at termination
1;
##########################################################


__END__


=head1 NAME

Ethiopic::System - conversions of charset encodings for Ethiopic script

=head1 SYNOPSIS

  use LiveGeez::Request;
  use Convert::Ethiopic::Cstocs;
  my $r = LiveGeez::Request->new;

	ReadParse ( \%input );
	$r->ParseInput ( \%input );

	my $c = Convert::Ethiopic::Cstocs->new ( $r );

	print &$c ("`selam:");
	print $c->conv("`alem"), "\n";

	$r->{number} = 1991;

	print "The Year in Ethiopia is ", EthiopicNumber ( $r ), "\n";

=head1 DESCRIPTION

Ethiopic::Cstocs and Ethiopic::Time are designed as interfaces to the methods in the
Ethiopic:: module and is oriented as services for the LiveGeez:: module.  In this
version Ethiopic::Cstocs expects to receive an object with hash elements using
the keys:

'sysInNum', 'xferInNum', 'sysOutNum', 'xferOutNum', 'fontOutNum',
'langNum', 'iPath', 'options', '7-bit', and 'number' if a numeral
system conversion is being performed.

These keys are set when using a LiveGeez::Request object as shown in the example.

=head1 AUTHOR

Daniel Yacob,  L<LibEth@EthiopiaOnline.Net|mailto:LibEth@EthiopiaOnline.Net>

=head1 SEE ALSO

perl(1).  LiveGeez(3).  L<http://libeth.netpedia.net|http://libeth.netpedia.net>

=cut
