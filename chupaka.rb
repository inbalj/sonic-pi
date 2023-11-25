###  inbaljona music ###
###  Chupaka ###
use_bpm 100

live_loop :drums do
  sample :drum_heavy_kick
  sleep 1
  2.times do
    sample :drum_snare_hard ,beat_stretch: 1.2
    sleep 0.5
  end
end

live_loop :bass1 do
  use_synth :fm
  play :g2, attack: 0, release: 0.25
  sleep 0.25
  play :a2, attack: 0, release: 0.3
  sleep 2
  play :c2
  sleep 0.75
  play :f2
  sleep 1
end

live_loop :bass2 do
  use_synth :dpulse
  play (chord :e2, :major).choose, release: 0.125, cutoff: rrand(60, 110)
  sleep 0.25
end

live_loop :melodia do
  with_fx :reverb, mix: 0.4 do
    use_synth :piano
    play chord(:c4, :minor7), release: 2, amp: 2
    
    use_synth :tri
    play_pattern_timed chord(:e4, :minor7), 0.25, pan: rrand(-1, 1), release: 0.1
    play_pattern_timed chord(:e4, :minor7), 0.25, pan: rrand(-1, 1), release: 0.2
    play_pattern_timed chord(:e6, :minor7), 0.25, pan: rrand(-1, 1), release: 0.3
    
    use_synth :piano
    play chord(:a4, :major7), release: 2, amp: 2
    
    use_synth :tech_saws
    play_pattern_timed chord(:d3, :major7), 0.25, pan: rrand(-1, 1), release: 0.05
    play_pattern_timed chord(:d3, :major7), 0.25, pan: rrand(-1, 1), release: 0.1
    play_pattern_timed chord(:d6, :major7), 0.25, pan: rrand(-1, 1), release: 0.3
    
    use_synth :pretty_bell
    play_pattern_timed chord(:c3, :major7), 0.25, pan: rrand(-1, 1), release: 0.05
    play_pattern_timed chord(:c3, :major7), 0.25, pan: rrand(-1, 1), release: 0.25
    play_pattern_timed chord(:c6, :major7), 0.25, pan: rrand(-1, 1), release: 0.3
  end
end

