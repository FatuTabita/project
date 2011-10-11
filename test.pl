# linia urmatoare spune interpretorului sa afiseze
# mesaje de atentionare
use warnings;

print "Hello World.\n";
=pod
comentarii
documentatie
etc.
=cut
print 'Hello World\n', "\n";

$nume = "Petru";
$adresa = "str. Paltinis nr. 4";
$varsta = 21;
$medie = 9.7;
print "Medie: ", $nume, " ,Medie: ", $medie, " ,locuieste la adresa ", $adresa, " ,si are varsta de ", $varsta, " ani", "\n"; 

@elevi = ("Petru", "Carmen", "Marius");
@colectie = ("Petru", 9.7, "Carmen", 8, "Marius", "Angela", 'c');

print $elevi[0], "\n";            #primul element din lista @elevi.
print $elevi[-1], "\n";           #ultimul element din lista elevi.

print scalar(@elevi), "\n";     #numarul de elemente 
print $#elevi, "\n";            #indexul maxim dintr-o lista (scalar(@elevi)-1)


%situatie = ("Petru", 9.7, "Amalia", 9.8, "Dan", 9);

($cheie, $valoare) = each %situatie, "\n";
print $situatie{"Dan"}, "\n"; # valoarea pentru cheia Dan 
print join(", ", keys(%situatie)), "\n";
print join(", ", values(%situatie)), "\n";
                 
%situatie = (
  "Petru" => 9.7,
  "Amalia" => 9.8,
  "Dan" => 9
);

($cheie, $valoare) = each %situatie, "\n";
# returneaza o pereche cheie-valoare din hash
#  mutand cursorul in hash pe pozitia urmatoare.

$a = 12;
print 'Valoarea lui $a ', "\n";

$a = $a + 2;
print "este $a \n", "\n";
print 'Linia 1\n$a\nLinia 2\n', "\n";
print "Linia 1\n$a\nLinia 2\n", "\n";

$nume = 'GEORGESCU';
$prenume = 'Dan';
$salut = "Hello $prenume $nume";

print "$salut", "\n";


$nume = <STDIN>;
print "Elevul $nume a intrat in clasa.\n";
chomp($nume);
print "Elevul $nume a intrat in clasa.\n";
# pentru documentatia functiei chomp folositi comanda:
# perldoc -f chomp intr-un terminal.

$a = <STDIN>;

if ($a < 0) {
  print "Negativ\n";
}
elsif ($a == 0) {
  print "Nul\n";
}
elsif ($a =~ m/[a-z]/i) {
  print "String\n";
}
else {
  print "Pozitiv\n";
}

print "BLA\n" if (!$a);
