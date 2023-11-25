# geek tutorials
# https://www.youtube.com/watch?v=XLxQg8oXCPY

in_thread do
  use_synth :piano

  #PIANO
  3.times do
    play chord( :d5, :major)
    sleep 0.25
    play chord( :d5, :major)
    sleep 0.5
    play chord( :d5, :major)
    sleep 0.25

    play chord( :a, :major)
    sleep 0.5
    play chord( :a, :major)
    sleep 0.5

    play chord( :g, :major)
    sleep 0.5
    play chord( :g, :major)
    sleep 0.5

    play chord( :a, :major)
    sleep 1
  end

  #FASTER PIANO SECTION
  8.times do
    play chord( :g, :major)
    sleep 0.25
  end
  play chord( :d5, :major)
end

in_thread do
  use_synth :sine

  # BASS
  3.times do
    play :d2
    sleep 0.25
    play :d2
    sleep 0.5
    play :d2
    sleep 0.25

    play :a2
    sleep 0.5
    play :a2
    sleep 0.5

    play :g2
    sleep 0.5
    play :g2
    sleep 0.5

    play :a2
    sleep 1
  end

    #FASTER BASS SECTION
    8.times do
      play :g2
      sleep 0.25
    end

    8.times do
      play :a2
      sleep 0.25
    end

    play :d2
end

  #DRUMS
  in_thread do
    33.times do
      sample :drum_heavy_kick
      sleep 0.5
    end
  end

  in_thread do
    16.times do
      sleep 0.5
      sample :drum_snare_hard
      sleep 0.5
    end
  end

  in_thread do
    65.times do
      sample :drum_cymbal_closed
      sleep 0.25
    end
  end

  in_thread do
    4.times do
      sample :drum_cymbal_open, amp: 0.35
      sleep 4
    end
  end

  in_thread do
    sleep 3.9
    4.times do
      sample :drum_snare_soft
      sleep 4
    end
  end

  in_thread do
    sleep 16
    sample :drum_cymbal_open
  end