# Laser Eletronic

use_debug false

define :laser do
  synth :prophet, note: 50, attack: 0, release: 3.8
end

ocean_amp = 0.2 #rrand(0.1, 0.3)
with_fx :reverb, mix: 0.5 do
  live_loop :oceans do
    s = synth [:bnoise, :cnoise, :gnoise].choose, amp: ocean_amp, attack: rrand(0, 4), sustain: rrand(0, 2), release: rrand(1, 5), cutoff_slide: rrand(0, 5), cutoff: rrand(60, 100), pan: rrand(-1, 1), pan_slide: rrand(1, 5), amp: ocean_amp
    control s, pan: rrand(-1, 1), cutoff: rrand(60, 110)
    sleep rrand(2, 4)
  end
end

# laser

live_loop :d do
  with_fx :distortion do
    4.times do
      # sample :bd_haus, amp: 2
      4.times do
        sleep 0.25
        # sample :bd_haus, amp: 2
        sleep 0.25
        sleep 0.25
        # sample :bd_haus, amp: 2
        sleep 0.25
        # sample :elec_cymbal, cutoff: 80
      end
    end
  end
end

live_loop :c do
  # synth :beep, note: :e7, amp: 0.25, release: 0.2
  sleep 4
end

live_loop :e do
  with_fx :reverb, room: 0.3 do
    # synth :mod_beep
    sleep 8
  end
end

live_loop :b do
  with_fx :reverb, room: 0.3 do
    # synth :dsaw, sustain: 1, amp: 0.5
    sleep 8
  end
end

live_loop :a do
  # with_fx :panslicer, mix: 0.5 do
  #   with_fx :echo do
  #     with_fx :ixi_techno do
  #       laser
  #     end
  #   end
  # end
  sleep 16
end
