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


sub enumerate
{
local ($index) = 0;

  foreach (@_) {
	  $_ =  $index++;
  }
}


local ( $enumerated );

if ( !$enumerated ) {  #  Hopefully all this happens only the first time
                       #  the package is loaded  -?

$enumerated = 1;

enumerate ( $TTName, $LESysNum, $LESysTV, $LEFontNum, $HasNum, $HTMLName );

enumerate ( $nocs, $acis, $acuwork, $addisword1, $addisword2, $alpas, $branai, $branaii, $cbhalea, $cbhaleb, $dehai, $dejene1, $dejene2, $ecoling, $ed, $enhpfr, $ethcitap, $ethcitas, $ethcitau, $ethiome, $ethiomex, $ethiop, $ethiopic1, $ethiopic2, $ethiosoft, $ethiosys, $ethiosysx, $fidelxtr1, $fidelxtr2, $gezbausi, $gezedit, $gezedit98, $gezfont, $gezfree1, $gezfree2, $gezigna, $gezi, $gezii, $geznewa, $geznewb, $geztype, $ies, $image, $iso, $jis, $junet, $laser, $mainz, $monotype1, $monotype2, $monotype3, $monoalt, $mononum, $muletex, $nci, $ncic, $ncic_et, $omnitech, $powergez, $powergeznum, $qubee, $samwp, $sam98, $sera, $sil1, $sil2, $sil3, $tfanus, $tfanusnew, $unicode, $visualgez, $all );

enumerate ( $notv, $clike, $decimal, $dos, $java, $uname, $uplus, $utf7, $utf8, $utf16, $zerox );

$noOps        =   0;
$aynIsZero    =   1;
$debug        =   2;
$ethOnly      =   4;
$gColon       =   8;
$qMark        =  16;
$gSpace       =  32;
$ungeminate   =  64;
$uppercase    = 128;


%FontInfo = (

##############################################################################################################################################
#
#
#
#	'LiveGe'ezName'			=>	[ 'TrueType Name',	LibEth_Enumeration,	XferSystem,	LibEth_FontNumber,	HasEthiopicNumber?,	HTML_DisplayName ],
#
#	LiveGe'ez Name     :  These are not _truly_ typeface names but the enocoding system request values as
#                         specified in the LiveGe'ez Remote Processing Protocol.  A LGRPP "system" may in fact be
#                         be a collection of encoding systems when the Fidel is spread out over multiple typefaces.
#                         In such systems only the first name in the font group is used, usually truncated, the
#                         following fonts of the font group are in the hash table but are not specifiec in the
#                         LGRPP.  For these companion fonts in a font group the real TrueType name is applied in
#                         these fields for the purpose of document decoding.
#
#	TrueType Name      :  The typeface name of the font as seen in font menus, "face" attributes and RTF files.
#                         "Bold" and "Italic" versions of fonts are not included as the OS will make the names
#                         transparent.  The names _are_ added in the case that the encoding of the font changes.
#
#                         For output systems where this does not apply 'none' may be entered or the field is
#                         recycled to store a LibEth processing "option".
#
#   LibEth Enueration  :  The enumerated value of the encoding system within LibEth.
#
#   Xfer System        :  The default Transfer Variant (8-bit,UTF7,8) of an Ethiopic encoding system. 
#
#	LibEth Font Number :  The numeric value for a typeface of a given encoding system within LibEth.
#
#	Has Ethiopic Number:  A boolean value to indicate if the font has Ethiopic Numerals (use LibEth later).
#
#	HTML Display Name  :  A SERA string for the font name itself as it would appear in Ethiopic HTML.
#
##############################################################################################################################################

#
#	Alex Ethiopian http://www.acuwork.com/
#
	'ALXethiopian' 			=>	[ 'ALXethiopian',				$acuwork,		0,	0,	0,	'\\Acu\\wrq' ],

#
#	AddisWord http://www.ethiolist.com/
#
	'Addis'  				=>	[ 'Addis One',					$addisword1,	0,	0,	1,	'adis\\Word\\' ],
	'Addis Two'  			=>	[ 'Addis Two',					$addisword2,	0,	1,	1,	'adis\\Word\\' ],

#
#	Alex Ethiopian http://www.acuwork.com/
#
	'Addis98'  				=>	[ 'Addis98',					$sam98,			0,	0,	0,	'adis98'     ],
	'Addis98w'  			=>	[ 'Addis98w',					$sam98,			0,	1,	0,	'adis98'     ],
	'AddisWP'  				=>	[ 'AddisWP',					$samwp,			0,	2,	0,	'adis\\WP\\' ],

#
#	Alpas http://www.webscape.co.uk/ethiopia/pc_house/
#
	'ET-Saba'  				=>	[ 'ET-Saba',					$alpas,			0,	0,	0,	'alpas' ],

#
#	Brana http://truman.cs.missouri.edu/~brana/
#
	'Brana' 				=>	[ 'Brana I',					$branai,		0,	0,	1,	'brana' ],
	'Brana II' 				=>	[ 'Brana II',					$branaii,		0,	1,	1,	'brana' ],

#
#	EthiO Systems Fonts http://www.neosoft.com/~ethiosys/
#
	'Amharic-A' 			=>	[ 'Amharic-A',					$cbhalea,		0,	0,	1,	'amarNa\\A\\' ],
	'Amharic-B' 			=>	[ 'Amharic-B',					$cbhaleb,		0,	1,	1,	'amarNa\\B\\' ],

#
#	SIL? http://www.sil.org
#
	'Ethiopic'				=>	[ 'ETHIOPIC PIC-1-regular',		$ethiopic1,		0,	0, 	0,	'ityoPik' ],
	'Ethiopic PIC-2-bold'	=>	[ 'ETHIOPIC PIC-2-bold',		$ethiopic2,		0,	1, 	0,	'ityoPik' ],

#
#	EthiO Systems Fonts http://www.neosoft.com/~ethiosys/
#
	'Ethiopia'				=>	[ 'Ethiopia Primary',			$ethiosys,		 0,	0,	1,	'ityo\\Systems\\ ityoPya' ],
	'Ethiopia Secondary'	=>	[ 'Ethiopia Secondary',			$ethiosys,		 0,	1,	1,	'ityo\\Systems\\ ityoPya' ],
	'EthiopiaSlanted'		=>	[ 'Ethiopia Primary Slanted',	$ethiosys,		 0,	2,	1,	'ityo\\Systems\\ ityoPya' ],
	'Ethiopia Secondary Slanted'
  							=>	[ 'Ethiopia Secondary Slanted',	$ethiosys,		 0,	3,	1,	'ityo\\Systems\\ ityoPya' ],
	'EthiopiaAnsiP' 		=>	[ 'EthiopiaAnsiP',				$ethiosys,		 0,	4,	1,	'ityo\\Systems\\ ityoPya\\ANSI\\' ],
	'EthiopiaAnsiS' 		=>	[ 'EthiopiaAnsiS',				$ethiosys,		 0,	5,	1,	'ityo\\Systems\\ ityoPya\\ANSI\\' ],
	'Washra' 				=>	[ 'Washra  Primary',			$ethiosys,		 0,	6,	1,	'ityo\\Systems\\ waxra'   ],
	'Washrax Secondary' 	=>	[ 'Washrax Secondary',			$ethiosys,		 0,	7,	1,	'ityo\\Systems\\ waxra'   ],
	'Washrasl'				=>	[ 'Washrasl  Primary Slanted',	$ethiosys,		 0,	8,	1,	'ityo\\Systems\\ waxra'   ],
	'Washraxsl Secondary Slanted'
							=>	[ 'Washraxsl Secondary Slanted',$ethiosys,		 0,	9,	1,	'ityo\\Systems\\ waxra'   ],
	'Wookianos'				=>	[ 'Wookianos Primary',			$ethiosys,		 0,	10,	1,	'ityo\\Systems\\ wqyanos' ],
	'Wookianos Secondary'	=>	[ 'Wookianos Secondary',		$ethiosys,		 0,	11,	1,	'ityo\\Systems\\ wqyanos' ],
	'Yebse' 				=>	[ 'YebSe Primary',				$ethiosys,		 0,	12,	1,	'ityo\\Systems\\ ybSe'    ],
	'YebSe Secondary'		=>	[ 'YebSe Secondary',			$ethiosys,		 0,	13,	1,	'ityo\\Systems\\ ybSe'    ],


#
#	Ethiopian Computers & Software http://home.navisoft.com/ethiopian/index.htm
#
	'GeezEditAmharicP' 		=>	[ 'Ge\xe8zEdit Amharic P',		$gezedit,		 0,	0,	0,	'gI2z\\Edit\\' ],
	'AmharQ' 				=>	[ 'AmharQ',						$gezedit,	     0,	1,	0,	'amarNa\\Q\\'  ],

#
#	Ge'ezFont http://www.geezfont.com/
#
	'GeezAddis'				=>	[ 'GeezAddis',					$gezfont,		 0,	0,	1,	'gI2z-adis'     ],
	'geezBasic'				=>	[ 'geezBasic',					$gezfont,		 0,	1,	1,	'gI2z\\Basic\\' ],
	'geezLong' 				=>	[ 'geezLong',					$gezfont,		 0,	2,	1,	'gI2z\\Long\\'  ],
	'GeezThin' 				=>	[ 'GeezThin',					$gezfont,		 0,	3,	1,	'gI2z\\Thin\\'  ],

#
#	Ge'ezFree Zemen ftp://ftp.cs.indiana.edu/pub/fidel/fonts/TrueType/InstallHelp.html
#
	'GFZemen' 				=>	[ 'GF Zemen Primary',			$gezfree1,		0,	0,	1,	'gI2z\\Free\\' ],
	'GF Zemen Secondary' 	=>	[ 'GF Zemen Secondary',			$gezfree1,		0,	1,	1,	'gI2z\\Free\\' ],
	'FirstTime' 			=>	[ 'GF Zemen Primary',			$gezfree1,		0,	0,	1,	'gI2z\\Free\\' ],
#	'ENHPFR'				=>	[ 'ENH Zena he',				$enhpfr,		0,	0,	1,	'\\ENHPFR\\'   ],
	'ENHPFR' 				=>	[ 'GF Zemen Primary',			$gezfree1,		0,	0,	1,	'gI2z\\Free\\' ],

#
#	Feedel http://members.aol.com/Feedel/Feedel.htm
#
	'Geezigna'  			=>	[ 'Geezigna',					$gezigna,		0,	0,	0,	'gI2zNa'        ],
	'Geez'  				=>	[ 'Geez',						$gezi,	 		0,	0,	1,	'gI2z'          ],
	'Geez II'	  			=>	[ 'Geez II',					$gezii,	 		0,	1,	1,	'gI2z'          ],
	'GeezNewA'  			=>	[ 'GeezNewA',					$geznewa,		0,	0,	1,	'gI2z\\New\\'   ],
	'GeezNewB'  			=>	[ 'GeezNewB',					$geznewb,		0,	1,	1,	'gI2z\\New\\'   ],
	'GeezSindeA'	  		=>	[ 'GeezSindeA',					$geznewa,		0,	2,	1,	'gI2z\\Sinde\\' ],
	'GeezSindeB'	  		=>	[ 'GeezSindeB',					$geznewa,		0,	3,	1,	'gI2z\\Sinde\\' ],
	'GeezA'  				=>	[ 'GeezA',						$geznewa,		0,	4,	1,	'gI2z'          ],
	'GeezB'  				=>	[ 'GeezB',						$geznewb,		0,	5,	1,	'gI2z'          ],
	'GeezDemo'  			=>	[ 'Geez Demo',					$geznewa,		0,	7,	0,	'gI2z\\Demo\\'  ],
	'GeezNet'  				=>	[ 'Geez Net',					$geznewa,		0,	8,	0,	'gI2z\\Net\\'   ],


#
#	Phonetic Systems http://www.geezsoft.com/
#
	'GeezType'  			=>	[ 'GeezType',					$geztype,		0,	0,	0,	'gI2\\Type\\'   ],

#
#	Power Ge'ez
#
	'Geez-1'		  		=>	[ 'Ge\'ez-1',					$powergez,		0,	0,	1,	'\\Power\\gI2z' ],
	'Geez-2'  				=>	[ 'Ge\'ez-2',					$powergez,		0,	1,	1,	'\\Power\\gI2z' ],
	'Geez-3'  				=>	[ 'Ge\'ez-3',					$powergez,		0,	2,	1,	'\\Power\\gI2z' ],
	'Ge\'ez-1 Number, etc'	=>	[ 'Ge\'ez-1 Number, etc',		$powergez,		0,	3,	1,	'\\Power\\gI2z' ],

#
#	ACIS http://www.acisconsulting.com/
#
	'HahuLite'  			=>	[ 'Hahu Lite',					$acis,			0,	0,	1,	'hehu \\Lite\\'        ],
	'HahuGothic'  			=>	[ 'Hahu Lite Gothic',			$acis,			0,	1,	1,	'hehu \\Lite Gothic\\' ],
	'HahuSerif'  			=>	[ 'Hahu Lite Serif',			$acis,			0,	2,	1,	'hehu \\Lite Serif\\'  ],
	'HahuTimes'  			=>	[ 'Hahu Lite Times',			$acis,			0,	3,	1,	'hehu \\Lite Times\\'  ],

#
#   Japanese systems
# 	JUNET http://www.etl.go.jp/~mule/
#
	'JIS' 					=>	[ 'none',						$jis,			0,	0,	1,	'\\JIS\\' ],
	'JUNET' 				=>	[ 'none',						$junet,			0,	0,	1,	'\\JUNET' ],

#
#	Monotype http://www.monotype.com/
#

	'Amharic'  				=>	[ 'Amharic 1',					$monotype1,		0,	0,	1,	'\\MonoType\\amarNa'          ],
	'Amharic 2'  			=>	[ 'Amharic 2',					$monotype2,		0,	1,	1,	'\\MonoType\\amarNa'          ],
	'Amharic 3'  			=>	[ 'Amharic 3',					$monotype3,		0,	2,	1,	'\\MonoType\\amarNa'          ],
	'AmharicBook'  			=>	[ 'Amharic Book 1',				$monotype1,		0,	3,	1,	'\\MonoType\\amarNa_\\Book\\' ],
	'AmharicBook 2'  		=>	[ 'Amharic Book 2',				$monotype3,		0,	4,	1,	'\\MonoType\\amarNa_\\Book\\' ],
	'AmharicBook 3'  		=>	[ 'Amharic Book 3',				$monotype3,		0,	5,	1,	'\\MonoType\\amarNa_\\Book\\' ],
	'Amharic_Alt' 			=>	[ 'Amharic_Alt',				$monoalt,		0,	0,	1,	'\\MonoType\\amarNa_\\Alt\\'  ],
	'Amharic_Num' 			=>	[ 'Amharic_Num',				$mononum,		0,	1,	1,	'\\MonoType\\amarNa_\\Alt\\'  ],

#
#	NCI/Ethiopian Software Family
#
	'ET-NCI' 				=>	[ 'ET-NCI',						$nci,			0,	0,	0,	'it-\\NCI\\' ],
	'ET-NEBAR' 				=>	[ 'ET-NEBAR',					$nci,			0,	2,	0,	'it-\\NCI\\' ],
	'ET-SAMI' 				=>	[ 'ET-SAMI',					$nci,			0,	4,	0,	'it-\\NCI\\' ],

#
#	NCIC
#
	'AGF-Zemen' 			=>	[ 'AGF - Zemen',				$ncic,			0,	0,	1,	'agafari-zemen'       ],
	'AGF-Dawit' 			=>	[ 'AGF - Dawit',				$ncic,			0,	1,	1,	'agafari-dawit'       ],
	'AGF-Ejji-Tsihuf' 		=>	[ 'AGF - Ejji Tsihuf',			$ncic_et,		0,	0,	1,	'agafari-Iji-Shuf'    ],
	'AGF-Rejim' 			=>	[ 'AGF - Rejim',				$ncic,			0,	3,	1,	'agafari-rejm'        ],
	'AGF-Yigezu-Bisrat' 	=>	[ 'AGF - Yigezu Bisrat',		$ncic,			0,	4,	1,	'agafari-ygezu-bsrat' ],
	'Agaw' 					=>	[ 'Agaw',						$dejene1,		0,	0,	0,	'dejnE'           	  ],
	'AgawBd' 				=>	[ 'AgawBd',						$dejene2,		0,	1,	0,	'dejnE'           	  ],

#
#	OmniTech http://omnitech.ethiopiaonline.net/
#
	'AmharicKechin'  		=>	[ 'Amharic  Kechin',			$omnitech,		0,	0,	0,	'amarNa qCn'        ],
	'AmharicYigezuBisrat'	=> 	[ 'Amharic Yigezu Bisrat',		$omnitech,		0,	1,	0,	'amarNa ygzu-bsrat' ],
	'AmharicGazetta' 		=>	[ 'Amharic Gazetta',			$omnitech,		0,	2,	0,	'amarNa gezETa'     ],

#
#   Dehai  http://www.primenet.com/~ephrem
#   Ed     http://www.sil.org/
#	Ethio Micro Emacs 
#          http://www.neosoft.com/~ethiosys/
# 	Mainz  http://www.uni-mainz.de/~kropp/
#	SERA   http://www.cs.indiana.edu/hyplan/dmulholl/fidel/sera-faq.html
#	Ethiop http://www.informatik.uni-hamburg.de/TGI/mitarbeiter/wimis/kummer/ethiop_eng.html
#
	'Dehai' 				=>	[ 'none',						$dehai,			0,	0,	1,	'deHay'				],
	'ed' 					=>	[ 'none',						$ed,			0,	0,	1,	'\\Ed\\'			],
	'ethiome' 				=>	[ 'none',						$ethiome,		0,	0,	1,	'ityo\\ME\\'		],
	'ethiop'				=>	[ 'none',						$ethiop,		0,	0,	1,	'ityoP'				],
	'sera' 					=>	[ 'none',						$sera,			0,	0,	1,	'\\SERA\\' 			],
	'Mainz' 				=>	[ 'none',						$mainz,			0,	0,	1,	'\\Mainz\\'			],

#
#	TFanus Based Systems
#
	'TfanusGeez01'  		=> 	[ 'TFanusGeez01',				$tfanus,		0,	0,	1,	'\\T\\fanus'       ],
	'Amharisch'  			=>	[ 'Amharisch',					$tfanus,		0,	1,	1,	'\\Amharisch\\'	   ],
	'GeezBausi'  			=>	[ 'GeezBausi',					$gezbausi,		0,	0,	1,	'gI2z\\Bausi\\'    ],
	'GeezTimesNew'  		=>	[ 'GeezTimesNew',				$tfanusnew,		0,	0,	1,	'gI2z\\TimesNew\\' ],

#
#	EthioSoft http://www.ethiosoft.com/
#
	'EthioSoft'  			=>	[ 'EthioSoft',					$ethiosoft,		0,	0,	1,	'ityo\\Soft\\' ],


#
#	Unicode Based http://www.unicode.org/
#
	'UTF7' 					=>	[ 'none',						$unicode,	 $utf7,	0,	1,	'\\UTF7\\'  ],
	'UTF8' 					=>	[ 'none',						$unicode,	 $utf8,	0,	1,	'\\UTF8\\'  ],
	'utf16'  				=>	[ 'none',						$unicode,	$utf16,	0,	1,	'\\UTF16\\' ],
	'unicode' 				=>	[ 'none',						$unicode,	$utf16,	0,	1,	'\\UTF16\\' ],

#
#	Visual Ge'ez
#
	'VG2-Main'				=>	[ 'VG2 Main',					$visualgez,		0,	0,	0,	'\\Visual\\gI2z' ],
	'VG2-Agazian'			=>	[ 'VG2 Agazian',				$visualgez,		0,	1,	0,	'\\Visual\\gI2z' ],
	'VG2-Title'	 			=>	[ 'VG2 Title',					$visualgez,		0,	2,	0,	'\\Visual\\gI2z' ],

#
#	Unknown Companies
#
	'Fidel' 				=>	[ 'FIDEL~`_SOFTWARE',			$fidelxtr1,		0,	0,	1,	'fidel' ],
	'EXTRA~\`_FIDEL' 		=>	[ 'EXTRA~`_FIDEL',				$fidelxtr2,		0,	1,	1,	'fidel' ],

#
#	Extraneous Systems
#
	'clike'					=>	[ $noOps,						$unicode,	    $clike,	0,	1,	'\\ \\\\xABCD\\'  ],
	'Clike'					=>	[ $uppercase,					$unicode,	    $clike,	0,	1,	'\\ \\\\xABCD\\'  ],
	'debug' 				=>	[ $debug,						$sera,		 		 0,	0,	1,	'\\Debugging\\'   ],
	'decimal' 				=>	[ $noOps,						$unicode,	  $decimal,	0,	1,	'\\Debugging\\'   ],
#	'image' 				=>	[ $noOps,						$image,				 0,	0,	1,	'\\Image Fonts\\' ],
#	'Image' 				=>	[ $noOps,						$image,				 0,	0,	1,	'\\Image Fonts\\' ],
	'Image' 				=>	[ 'GF Zemen Primary',			$gezfree1,		 	 0,	0,	1,	'gI2z\\Free\\'    ],
	'java'					=>	[ $noOps,						$unicode,		 $java,	0,	1,	'\\Java\\'        ],
	'Java'					=>	[ $uppercase,					$unicode,		 $java,	0,	1,	'\\Java\\'        ],
	'UPlus'					=>	[ $noOps,						$unicode,		$uplus,	0,	1,	'\\U+abcd\\'      ],
	'UPlus'					=>	[ $uppercase,					$unicode,		$uplus,	0,	1,	'\\U+ABCD\\'      ],
	'zerox'					=>	[ $noOps,						$unicode,		$zerox,	0,	1,	'\\0xabcd\\'      ],
	'Zerox'					=>	[ $uppercase,					$unicode,		$zerox,	0,	1,	'\\0xABCD\\'      ]
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
my ($self, $lang) = (shift,shift);


	$self->{lang}    = $lang if ( $lang );

	$self->{langNum} = $ISOLanguages{$self->{lang}}
	
}


sub TTName
{
my ($self, $sysName) = (shift,shift);


	$self->{sysName} = $sysName if ( $sysName );

	$self->{TTName} = $FontInfo{$self->{sysName}}[$TTName];

}


sub SysNum
{
my ($self, $sysName) = (shift,shift);


	$self->{sysName} = $sysName if ( $sysName );

	if ( $FontInfo{$self->{sysName}}[$LESysNum] ) {
	   $self->{sysNum} = $FontInfo{$self->{sysName}}[$LESysNum];
	} else {
		# unfortunately testing for the hash element created the
		# hash element, maybe a bug with this version of Perl?
		delete ( $FontInfo{$self->{sysName}} ) ;
	}

	$self->{sysNum};

}


sub XferNum
{
my ($self, $xfer) = (shift,shift);


	$self->{xfer}    = $xfer if ( $xfer );

	$self->{xferNum} = $TransferVariant{$self->{xfer}};

}


sub SysXfer
{
my ($self, $xfer) = (shift,shift);


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
my ($self, $sysName)  = (shift,shift);


	$self->{sysName}  = $sysName if ( $sysName );

	$self->{HTMLName} = $FontInfo{$self->{sysName}}[$HTMLName];

}


sub FontNum
{
my ($self, $sysName) = (shift,shift);


	$self->{sysName} = $sysName if ( $sysName );

	$self->{fontNum} = $FontInfo{$self->{sysName}}[$LEFontNum];

}


sub HasENumbers
{
my ($self, $sysName) = (shift,shift);


	$self->{sysName} = $sysName if ( $sysName );

	$self->{HasENumbers} = $FontInfo{$self->{sysName}}[$HasNum];

}


sub SysNameFromTrueTypeName
{
my ($self, $sysName) = (shift,shift);


	$sysName = $self->{sysName} unless ( $sysName );
	delete $self->{sysName};

	local (@fontNames) = split ( /,/, lc($sysName) );

	while ( ($sysName = shift @fontNames) ) {
		foreach $key (keys %FontInfo) {
			if ( $sysName eq lc($FontInfo{$key}[$TTName])
				 || $sysName eq lc($key) )
		 	{
				$self->{sysName} = $key;
				goto ENDWHILE;
			}
		}
	}
	ENDWHILE:

	$self->SysNum;  # since we reach here from a SysNum failure

}


sub new
{
my $class = shift;
my $self  = {};

	
	$blessing = bless $self, $class;

	$self->{sysName} = shift;
  	return (0) if  !( $self->SysNum || $self->SysNameFromTrueTypeName );
  	$self->SysXfer;

	$blessing;

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
  require Convert::Ethiopic::Cstocs;
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
