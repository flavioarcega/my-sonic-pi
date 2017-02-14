#Primeiro bass

define :base do
  puts "Inicio"
  use_synth :beep
  play :C2, attack: 0.01, sustain: 0.48, release: 0.01, amp: 2
  sleep 0.5
  play :C2, attack: 0.01, sustain: 0.48, release: 0.01, amp: 2
  sleep 0.5
  play :E2, attack: 0.01, sustain: 0.48, release: 0.01, amp: 2
  sleep 0.75

  play :C2, attack: 0.01, sustain: 0.48, release: 0.01, amp: 2
  sleep 0.5
  play :C2, attack: 0.01, sustain: 0.48, release: 0.01, amp: 2
  sleep 0.5
  play :D2, attack: 0.01, sustain: 0.23, release: 0.01, amp: 2
  sleep 0.25
  play :E2, attack: 0.01, sustain: 0.48, release: 0.01, amp: 2
  sleep 0.75
end

# Inicio de tudo
7.times do
  3.times do
    sample :drum_snare_soft
    sleep 0.1
  end
  sleep 0.1
end
sample :drum_snare_soft
sample :drum_cymbal_open, amp: 0.3
sleep 0.15
sample :drum_snare_soft
sample :drum_cymbal_open, amp: 0.3
sleep 0.5

# loop principal
live_loop :main do
  base
end

in_thread do
  sync :main
  time = 0
  8.times do
    puts time
    time = time +1
    sleep 7.5
    sample :drum_splash_soft, amp: 0.4
  end
end

in_thread do
  sync :main
  sleep 7.5
  12.times do
    sleep 1
    sample :drum_snare_hard, amp: 0.1
    sleep 1.75
    sample :drum_snare_hard, amp: 0.1
    sleep 0.25
    sample :drum_snare_hard, amp: 0.1
    sleep 0.75
  end
end

in_thread do
  sync :main
  sleep 7.5
  sleep 7.5
  8.times do
    sleep 1
    play :C7, attack: 0.01, sustain: 0.1, release: 0.01, amp: 0.2
    sleep 2
    play :C7, attack: 0.01, sustain: 0.1, release: 0.01, amp: 0.2
    sleep 0.75
  end
end

in_thread do
  sync :main
  sleep 7.5
  sleep 7.5
  sleep 7.5
  use_synth :tb303
  6.times do
    play :C2, attack: 0.01, sustain: 0.48, release: 0.01, amp: 0.05
    sleep 0.5
    play :C2, attack: 0.01, sustain: 0.48, release: 0.01, amp: 0.05
    sleep 0.5
    play :E2, attack: 0.01, sustain: 0.48, release: 0.01, amp: 0.05
    sleep 0.75

    play :C2, attack: 0.01, sustain: 0.48, release: 0.01, amp: 0.05
    sleep 0.5
    play :C2, attack: 0.01, sustain: 0.48, release: 0.01, amp: 0.05
    sleep 0.5
    play :D2, attack: 0.01, sustain: 0.23, release: 0.01, amp: 0.05
    sleep 0.25
    play :E2, attack: 0.01, sustain: 0.48, release: 0.01, amp: 0.05
    sleep 0.75
  end
end

in_thread do
  sync :main
  sleep 7.5
  sleep 7.5
  sleep 7.5
  sleep 7.5
  sample :ambi_lunar_land, attack: 2, sustain: 3.5, release: 2, amp: 0.5
end