# Piano Eletronic
use_debug false

bass = 0
chak = 0
notas_completo = (ring :E4, :Fs4, :B4, :Cs5, :D5, :Fs4, :E4, :Cs5, :B4, :Fs4, :D5, :Cs5) # 12 notes
notas_fim = (ring :E4, :Fs4, :B4, :Cs5, :D5, :Fs4, :E4, :Cs5, :B4) # 9 notes

define :notasPiano do |notas=notas_completo, velocidade=0.5|
  notas.each do
    with_fx :reverb, room: 1 do
      synth :piano, note: notas.tick, attack: 0.1, sustain: 0.2, release: 0.1, amp: 0.5
      sleep velocidade
    end
  end
end

define :bassLoop do
  in_thread do
    8.times do
      sample :bd_haus
      sleep 1
    end

    if chak == 0 then
      chak = 1
      chakLoop
    end

    8.times do
      sample :bd_haus
      sleep 1
    end

    12.times do
      sample :bd_haus
      sleep 0.5
    end

    #14s
    in_thread {5.times {notasPiano(notas_completo, 0.125)}}
    8.times do
      sample :bd_haus
      sleep 0.25
      sample :bd_haus
      sleep 0.25
      sample :bd_haus
      sleep 0.25
      sample :bd_haus
      sleep 0.25
    end
    notasPiano(notas_fim, 1)
  end
end

define :chakLoop do
  in_thread do
    9.times do
      with_fx :distortion do
        sample :elec_cymbal, amp: 0.1, rate: 1.5
        sleep 2
      end
    end
  end
end

# Aqui onde tudo começa
3.times { notasPiano }
if bass == 0 then
  bass = 1
  bassLoop
end
2.times {notasPiano(notas_fim, 1)}
