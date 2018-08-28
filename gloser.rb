#!/usr/bin/ruby

$gloser = { "fish" => "fisk", "spoon" => "skje", "window" => "vindu", 
           "music" => "musikk", "cat" => "katt", "happy" => "glad"}


def init
  puts "Dette er et gloseprogram. Skriv inn utenlandsk til norsk (utn) eller motsatt (ntu)"
  valg = gets.chomp.downcase
  case valg
  when "utn"
    puts "du valgte UTN"
  when "ntu"
    puts "du valgte NTU"
  else
    die("Du valgte et ulovlig valg")
  end
end

def les_fil
  File.open("gloser.txt").each do |line|
    puts line
  end
end

def pugg_gloser
  $gloser.each do |utenl,norsk|
    print ""
  end
end

init()
pugg_gloser()
#les_fil()
