# script para facilitar obter a nota de algum sintetizador

# Matriz com notas audiveis
define :matriz do |tempo=0.1|
  play_pattern_timed [:C2, :D2, :E2, :F2, :G2, :A2, :B2], [tempo]
  play_pattern_timed [:C3, :D3, :E3, :F3, :G3, :A3, :B3], [tempo]
  play_pattern_timed [:C4, :D4, :E4, :F4, :G4, :A4, :B4], [tempo]
  play_pattern_timed [:C5, :D5, :E5, :F5, :G5, :A5, :B5], [tempo]
  play_pattern_timed [:C6, :D6, :E6, :F6, :G6, :A6, :B6], [tempo]
  play_pattern_timed [:C7, :D7, :E7, :F7, :G7, :A7, :B7], [tempo]
  play_pattern_timed [:C8, :D8, :E8, :F8, :G8, :A8, :B8], [tempo]
end

define :beep do
  puts "Beep"
  sleep 1
  use_synth :beep
  matriz
end

define :blade do
  puts "Blade"
  sleep 1
  use_synth :blade
  matriz
end

define :chipbass do
  #  puts "Chipbass"
  sleep 1
  use_synth :chipbass
  matriz
end

define :chiplead do
  puts "Chiplead"
  sleep 1
  use_synth :chiplead
  matriz
end

define :darkAmbience do
  puts "Dark Ambience"
  sleep 1
  use_synth :dark_ambience
  matriz(2)
end

define :dpulse do
  puts "Dpulse"
  sleep 1
  use_synth :dpulse
  matriz
end

define :dsaw do
  puts "Dsaw"
  sleep 1
  use_synth :dsaw
  matriz
end

define :dtri do
  puts "Dtri"
  sleep 1
  use_synth :dtri
  matriz
end

define :dull_bell do
  puts "Dull Bell"
  sleep 1
  use_synth :dull_bell
  matriz
end

define :fm do
  puts "fm"
  sleep 1
  use_synth :fm
  matriz
end

define :growl do
  puts "Growl"
  sleep 1
  use_synth :growl
  matriz
end

define :hollow do
  puts "Hollow"
  sleep 1
  use_synth :hollow
  matriz
end

define :hoover do
  puts "Hoover"
  sleep 1
  use_synth :hoover
  matriz(2)
end

define :modBeep do
  puts "Mod Beep"
  sleep 1
  use_synth :mod_beep
  matriz(1)
end

define :modDsaw do
  puts "Mod Dsaw"
  sleep 1
  use_synth :mod_dsaw
  matriz(1)
end

define :modFm do
  puts "Mod Fm"
  sleep 1
  use_synth :mod_fm
  matriz
end

define :modPulse do
  puts "Mod Pulse"
  sleep 1
  use_synth :mod_pulse
  matriz(2)
end

define :modSaw do
  puts "Mod Saw"
  sleep 1
  use_synth :mod_saw
  matriz(2)
end

define :modSine do
  puts "Mod Sine"
  sleep 1
  use_synth :mod_sine
  matriz(2)
end

define :modTri do
  puts "Mod Tri"
  sleep 1
  use_synth :mod_tri
  matriz(2)
end

define :piano do
  puts "Piano"
  sleep 1
  use_synth :piano
  matriz(0.2)
end

define :pluck do
  puts "Pluck"
  sleep 1
  use_synth :pluck
  matriz(0.5)
end

define :prettyBell do
  puts "Pretty Bell"
  sleep 1
  use_synth :pretty_bell
  matriz(0.2)
end

define :prophet do
  puts "Prophet"
  sleep 1
  use_synth :prophet
  matriz(0.5)
end

define :pulse do
  puts "Pulse"
  sleep 1
  use_synth :pulse
  matriz(0.2)
end

define :saw do
  puts "Saw"
  sleep 1
  use_synth :saw
  matriz(0.2)
end

define :sine do
  puts "Sine"
  sleep 1
  use_synth :sine
  matriz(0.2)
end

define :square do
  puts "Square"
  sleep 1
  use_synth :square
  matriz(0.2)
end

define :subPulse do
  puts "Sub Pulse"
  sleep 1
  use_synth :subpulse
  matriz(0.2)
end

define :supersaw do
  puts "Super Saw"
  sleep 1
  use_synth :supersaw
  matriz(0.5)
end

define :tb303 do
  puts "tb303"
  sleep 1
  use_synth :tb303
  matriz(0.3)
end

define :techSaws do
  puts "Tech Saws"
  sleep 1
  use_synth :tech_saws
  matriz(0.3)
end

define :tri do
  puts ""
  sleep 1
  use_synth :tri
  matriz(0.3)
end

define :zawa do
  puts "Zawa"
  sleep 1
  use_synth :zawa
  matriz(0.3)
end

#######################################################
# chamar aqui a funcao correspondente ao sintetizador #
#######################################################
in_thread do
  piano
end
