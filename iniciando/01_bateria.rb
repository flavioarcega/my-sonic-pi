define :base do
  puts "Inicio"
  6.times do
    sample :drum_snare_soft
    sleep 0.2
    sample :drum_snare_soft
    sample :drum_cymbal_soft, amp: 0.5
    sleep 0.2
  end
  #total 2.4
end

define :virada do
  2.times do
    2.times do
      sample :drum_snare_soft
      sleep 0.1
    end
    sleep 0.05
  end
  sleep 0.05
  sample :drum_snare_soft
  sample :drum_cymbal_open, amp: 0.3
  sleep 0.25
  # total 0.8
end

# Inicio de tudo
5.times do
  sample :drum_cymbal_open, amp: 0.3
  sleep 0.2
end
sleep 0.1

# Loop principal
live_loop :main do
  base
  virada
end

in_thread do
  sync :main
  sleep 3.2
  loop do
    12.times do
      sleep 0.2
      sample :drum_bass_soft
    end
    sleep 0.8
  end
end

in_thread do
  sync :main
  sleep 3.2
  sleep 3.2
  2.times do
    sleep 2.4
    2.times do
      2.times do
        sample :drum_cymbal_open, amp: 0.3
        sleep 0.1
      end
      sleep 0.05
    end
    sleep 0.25
  end
end