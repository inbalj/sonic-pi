### jonathan hakatan ###
use_bpm 120
use_synth :piano
in_thread do
  play_pattern_timed [67, 64, 64],[0.5]
  sleep 0.5
  play_pattern_timed [65, 62, 62],[0.5]
  sleep 0.5
  play_pattern_timed [60,62,64,65,67,67,67],[0.5,0.5,0.5,0.5,0.5,0.5,1]
  play_pattern_timed [67, 64, 64],[0.5]
  sleep 0.5
  play_pattern_timed [65, 62, 62],[0.5]
  sleep 0.5
  play_pattern_timed [60,64,67,67,60],[0.5]
  sleep 1.5
  4.times do
    play 62
    sleep 0.5
  end
  play_pattern_timed [62,64,65],[0.5]
  sleep 0.5
  4.times do
    play 64
    sleep 0.5
  end
  play_pattern_timed [64,65,67],[0.5]
  sleep 0.5
  play_pattern_timed [67, 64, 64],[0.5]
  sleep 0.5
  play_pattern_timed [65, 62, 62],[0.5]
  sleep 0.5
  play_pattern_timed [60,64,67,67,60],[0.5]
  sleep 1
end
