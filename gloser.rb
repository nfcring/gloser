#!/usr/bin/ruby
# coding: utf-8

$gloser = { "fish" => "fisk", "spoon" => "skje", "window" => "vindu", 
            "music" => "musikk", "cat" => "katt", "happy" => "glad",
            "summer" => "sommer", "winter" => "vinter", "dog" => "hund",
            "horse" =>"hest", "class" =>"klasse"}
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
  return $valg
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
  antall = 0
  $gloser.each do |utenl,norsk|
    antall += 1
    
    case $valg
    when "utn"
      puts "Hva er #{utenl} på norsk?"
      oversettelse = gets.chomp.downcase
      case oversettelse
      when norsk
        puts "riktig"
        $points+=1
      else
        puts "feil, riktig svar er #{norsk}"
      end
      
    when "ntu"
      puts "Hva er #{norsk} på engelsk?"
      oversettelse = gets.chomp.downcase
      case oversettelse
      when utenl
        puts "riktig"
        $points+=1
      else
        puts "feil, riktig svar er #{utenl}"
      end
    end
    puts"#{$points}" + "/" + "#{antall}"
  end
end
clear()
valg = init()
pugg_gloser()
#les_fil()
