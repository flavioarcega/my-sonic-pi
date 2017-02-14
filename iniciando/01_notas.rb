define :corpo do
  play_pattern_timed [:C5, :C5],[0.4]
  play_pattern_timed [:C5, :D5, :C5, :D5],[0.2]
  play :E5, sustain: 0.3
  sleep 0.35
  play :E5, sustain: 0.3
  sleep 0.4
  play_pattern_timed [:C5, :D5, :C5, :D5],[0.2]
  play :D5, sustain: 0.3
  sleep 0.35
  play :D5, sustain: 0.3
  sleep 0.4
  play_pattern_timed [:C5, :D5, :C5, :D5],[0.2]
  play :C5, sustain: 0.3
  sleep 0.2
  play_pattern_timed [:F5, :E5, :D5, :C5],[0.2]
  play_pattern_timed [:F5, :E5, :D5, :C5],[0.2]
  sleep 1
end

# Loop principal
live_loop :main do
  use_synth :beep
  corpo
end
