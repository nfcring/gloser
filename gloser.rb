#!/usr/bin/ruby
# coding: utf-8

$gloser = { "fish" => "fisk", "spoon" => "skje", "window" => "vindu", 
           "music" => "musikk", "cat" => "katt", "happy" => "glad"}
$points = 0

def init
  puts "Dette er et gloseprogram. Skriv inn utenlandsk til norsk (utn) eller motsatt (ntu)"
  valg = gets.chomp.downcase
  case valg
  when "utn"
    puts "du valgte UTN"
  when "ntu"
    puts "du valgte NTU"
  else
    puts "Det er ikke et gyldig valg"
    sleep(1)
    clear()
    init()
  end
end

def clear
  puts "\e[H\e[2J"
end

def les_fil
  File.open("gloser.txt").each do |line|
    puts line
  end
end

def pugg_gloser
  $gloser.each do |utenl,norsk|
    puts "Hva er #{utenl} på norsk?"
    oversettelse = gets.chomp.downcase
    case oversettelse
    when norsk
      puts "riktig"
      $points+=1
    else
      puts "feil, riktig svar er #{norsk}"
    end
  end
  puts"#{$points}" + "/6"
end

clear()
init()
pugg_gloser()
#les_fil()
