live_loop :lets_start do
  synth :pretty_bell, attack: 2
  sleep 0.25
end

live_loop :second_loop do
  sample :loop_safari
  sample :bass_hit_c, decay: 0.45
  sleep 0.75
end

live_loop :drums do
  if one_in(5)
    sample :drum_cymbal_hard
    sleep 0.5
  else
    sample :drum_tom_mid_hard
    sleep 0.7
  end
end

live_loop :my_voice do
  sample "/Users/jessicagarson/Documents/recordings/no.wav", beat_stretch: 3, rate: 0.5
  sleep 5
end

live_loop :distort_all_the_things do
  with_fx :distortion do
    synth :zawa
    sleep 0.4
  end
end
