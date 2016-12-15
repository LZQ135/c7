#!usr/bin/perl -w
use strict;
use warnings;

my $dna = random_dna;
my $i;
my $mutant;
srand( time | $$ );
$mutant = mutate($dna);
print "\noriginal DNA:\n\n";
print "$dna\n";
print "\nmutant\n\n";
print "$mutant\n";
exit;

sub mutate {
 my ($dna) = @_;
 my ($position) = randomposition($dna);
 my ($newbase) = randomnucleotide();
 substr( $dna, $position, 1,$newbase );
 return $dna;
}
sub randomelement {
 my (@array) = @_;
 return $array[ rand @array ];
}
sub randomnucleotide {
 my (@nucleotides) = ( 'A', 'C', 'G', 'T' );
 return randomelement(@nucleotides);
}
sub randomposition {
 my ($string) = @_;
 return int rand length $string;
}
sub random_dna {
my $size = 1;
my $max = 28;
my $min = 15;
my @random_dna = ();
srand ( time | $$ );
@random_dna = make_set( $min, $max, $size );
foreach my $dna (@random_dna) 
}
sub make_set {
my ( $min, $max, $size ) = @_;
my $length;
my $dna;
my @set;
for ( my $i = 0 ; $i < $size ; ++$i ) {
$length = randomlength( $min, $max );
$dna = make_random_dna($length);
push( @set, $dna );
}
return @set;
}
sub randomlength {
my ( $min, $max ) = @_;
return  ( int( rand( $max - $min + 1 ) ) + $min );
}
sub make_random_dna {
my ($length) = @_;
my $dna;
for ( my $i = 0 ; $i < $length ; ++$i ) {
$dna .= randomnucleotide();
}
return $dna;
}
 


