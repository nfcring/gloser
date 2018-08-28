#!/usr/bin/ruby

$gloser = { "fish" => "fisk", "spoon" => "skje", "window" => "vindu", 
           "music" => "musikk", "cat" => "katt", "happy" => "glad"}


def init
  puts "Dette er et gloseprogram. Skriv inn utenlandsk til norsk (A) eller motsatt (B)"
  valg = gets.chomp
  case valg
  when "A"
    puts "du valgte A"
  when "B"
    puts "du valgte B"
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
