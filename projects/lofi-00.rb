use_bpm 70  # Chill Guy I say

# Drum Loop
live_loop :drums do
  sample :bd_tek, amp: 1.2 
  sleep 1
  sample :sn_dolf, amp: 0.8  
  sleep 1
  sample :drum_cymbal_closed, amp: 0.5, rate: 1.5  # Light hi-hat
  sleep 0.5
end

# Chord Progression - excuse my weak knowledge of music
live_loop :chords do
  use_synth :prophet
  play_chord [:c4, :e4, :g4], release: 4, cutoff: 70  # C major
  sleep 4
  play_chord [:a3, :c4, :e4], release: 4, cutoff: 70  # A minor
  sleep 4
  play_chord [:f3, :a3, :c4], release: 4, cutoff: 70  # F major
  sleep 4
  play_chord [:g3, :b3, :d4], release: 4, cutoff: 70  # G major
  sleep 4
end

# Melody
live_loop :melody do
  use_synth :pluck
  with_fx :reverb, room: 0.8 do
    play :e4, release: 0.5
    sleep 0.75
    play :g4, release: 0.5
    sleep 0.5
    play :a4, release: 0.5
    sleep 1
    play :g4, release: 0.5
    
    sleep 0.5
    play :e4, release: 0.5
    sleep 1
    play :d4, release: 0.5
    sleep 0.75
    play :c4, release: 0.5
    sleep 0.5
    play :d4, release: 0.5
    sleep 1.5
  end
end

live_loop :ambient do
  with_fx :slicer, phase: 0.125, mix: 0.5 do
    sample :ambi_glass_hum, amp: 0.3, rate: 0.5
    sleep 8
  end
end
