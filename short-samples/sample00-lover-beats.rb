#Lover

use_bpm 103

live_loop :beat do
  sample :bd_haus, amp: 0.8  # Bass drum
  sleep 0.5
  sample :bd_haus, amp: 1  # Bass drum
  sleep 1.5
  sample :sn_dub, amp: 0.7  # Snare
  sleep 1.0
end

live_loop :hihat do
  sample :drum_cymbal_closed, amp: 0.4, rate: 1.5 #Cymbal Closed
  sleep 0.5
end

live_loop :chords do
  use_synth :piano
  play_chord [:c4, :e4, :g4], release: 2  # C major
  sleep 3
  play_chord [:g3, :b3, :d4], release: 2  # G major
  sleep 3
  play_chord [:a3, :c4, :e4], release: 2  # A minor
  sleep 3
  play_chord [:f3, :a3, :c4], release: 2  # F major
  sleep 3
end


##| use_bpm 90

##| use_synth :piano

##| melody = [
##|   [:a4, 0.5],  # A note, half a beat
##|   [:c5, 0.5],  # C note, half a beat
##|   [:e5, 1],    # E note, one beat
##|   [:g4, 0.5],  # G note, half a beat
##|   [:a4, 0.5],  # A note, half a beat
##|   [:f4, 1],    # F note, one beat
##| ]

##| # Play the melody in a loop
##| live_loop :escapism_melody do
##|   melody.each do |note, duration|
##|     play note
##|     sleep duration
##|   end
##|   sleep 2
##| end

##| use_synth :fm  # Use a deep, bassy synth

##| # Bassline Loop
##| live_loop :bass do
##|   play :a2, release: 0.8, amp: 1.5  # A note (root bass note)
##|   sleep 1
##|   play :f2, release: 0.8, amp: 1.5  # F note
##|   sleep 1
##|   play :g2, release: 0.8, amp: 1.5  # G note
##|   sleep 1
##|   play :e2, release: 0.8, amp: 1.5  # E note
##|   sleep 1
##| end

##| live_loop :beat do
##|   sample :bd_haus, amp: 1  # Bass drum
##|   sleep 1
##|   sample :sn_dub, amp: 1  # Snare
##|   sleep 1
##| end

##| live_loop :hihat do
##|   sync :beat  # Sync with the beat loop
##|   sample :drum_cymbal_closed, amp: 0.8, rate: 1.5
##|   sleep 0.5
##| end

##| live_loop :chords do
##|   use_synth :prophet
##|   play_chord [:a3, :c4, :e4], release: 2, amp: 1  # A minor chord
##|   sleep 2
##|   play_chord [:f3, :a3, :c4], release: 2, amp: 1  # F major chord
##|   sleep 2
##|   play_chord [:g3, :b3, :d4], release: 2, amp: 1  # G major chord
##|   sleep 2
##|   play_chord [:e3, :g3, :b3], release: 2, amp: 1  # E minor chord
##|   sleep 2
##| end

##| live_loop :counter_melody do
##|   use_synth :pluck
##|   play :e5, release: 0.5
##|   sleep 0.5
##|   play :f5, release: 0.5
##|   sleep 0.5
##|   play :g5, release: 1
##|   sleep 1
##|   play :a4, release: 0.5
##|   sleep 0.5
##|   play :g4, release: 0.5
##|   sleep 0.5
##| end

### End of Raye's Mock

##| Demo 1

##| live_loop :random_riff do
##|   #synth :blade, note: :e4, release: 4, cutoff: 100, amp: 1.5
##|   use_synth :dsaw
##|   use_random_seed 43
##|   notes = (scale :e3, :minor_pentatonic, num_octaves: 2).shuffle.take(8)
##|   8.times do
##|     play notes.tick, release: rand(0.5), cutoff: rrand(60, 130) if one_in(2)
##|     sleep 0.125
##|   end
##| end

##| live_loop :drums do
##|   use_random_seed 500
##|   16.times do
##|     sample :bd_haus, rate: 2, cutoff: 110 if rand < 0.35
##|     sleep 0.125
##|   end
##| end

##| live_loop :bd do
##|   sample :bd_haus, cutoff: 100, amp: 3
##|   sleep 0.5
##| end

##| live_loop :beat do
##|   sample :drum_heavy_kick
##|   sleep 0.5
##| end

