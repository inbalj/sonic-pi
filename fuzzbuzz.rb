# Welcome to Sonic Pi
#fuzzbuzz
use_bpm 244
use_synth :tech_saws

live_loop :main do
  i=1
  16.times do
    if factor?(i,15)
      play :G3
    elsif factor?(i,5)
      play :D4
    elsif factor?(i,3)
      play :C4
    else
      play :A3
    end

    i = i+1
    sleep 1
  end
end



