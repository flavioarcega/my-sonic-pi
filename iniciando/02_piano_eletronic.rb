# Piano Eletronic
use_debug false

bass = 0
chak = 0
notas = (ring :E4, :Fs4, :B4, :Cs5, :D5, :Fs4, :E4, :Cs5, :B4, :Fs4, :D5, :Cs5) # 12 notes
notas_fim = (ring :E4, :Fs4, :B4, :Cs5, :D5, :Fs4, :E4, :Cs5, :B4) # 9 notes

live_loop :main do
  3.times do
    notas.size.times do
      with_fx :reverb, room: 1 do
        # with_fx :panslicer do
        synth :piano, note: notas.tick, attack: 0.1, sustain: 0.2, release: 0.1, amp: 0.5
        sleep 0.5
        # end
      end
    end
  end

  if bass == 0 then
    bass = 1
    bassLoop
  end

  notas_fim.size.times do
    with_fx :reverb, room: 1 do
      # with_fx :panslicer do
      synth :piano, note: notas_fim.tick, attack: 0.1, sustain: 0.2, release: 0.1, amp: 0.5
      sleep 1
      # end
    end
  end
  sleep 8
end

define :bassLoop do
  in_thread do
    loop do
      # 2.times do
      #   sample :bd_haus
      #   sleep 0.125
      # end

      # 3.times do
      #   sample :bd_haus
      #   sleep 0.5
      # end

      8.times do
        sample :bd_haus
        sleep 1
      end

      if chak == 0 then
        chak = 1
        chakLoop
      end
    end
  end
end

define :chakLoop do
  in_thread do
    8.times do
      with_fx :distortion do
        sample :elec_cymbal, amp: 0.1, rate: 1.5
        sleep 2
      end
    end
  end
end
