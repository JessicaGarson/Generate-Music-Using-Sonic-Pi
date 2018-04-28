# Channel Your Own Messica Arson
Artist + Code Collective Talk May 8th

## What is Sonic Pi?
Sonic Pi is an IDE that allows you write ruby code that allows you to interact with your computer as if it was a synth. Sonic Pi is a wrapper for another language called super collider.

## Where to download
You can grab Sonic Pi [here](https://sonic-pi.net/)

## The Coolest Part of Sonic Pi
The documentation is in the IDE for you.

## Basic syntax of a loop
The loops you are creating will typically loop like this.

```ruby
live_loop :name_your_loop do
  synth :name_of_synth
  sleep 0.25
end
```

## Our first loop
We'll type this into the buffer.
```ruby
live_loop :lets_start do
  synth :pretty_bell
  sleep 0.25
end
```

## Now let's add in a sample
```ruby
live_loop :second_loop do
    sample :loop_safari
    sleep 0.75
end
```

## Let's add some bass into the second loop
We can use the same loop to add bass into the same timing.
```ruby
live_loop :second_loop do
  sample :loop_safari
  sample :bass_hit_c
  sleep 0.75
end
```

## Let's add another loop for drum sounds
We'll be using an if else statement to add some drum samples into our song.
```ruby
live_loop :drums do
  if one_in(5)
    sample :drum_cymbal_hard
    sleep 0.5
  else
    sample :drum_tom_mid_hard
    sleep 0.7
  end
end
```

## Working with samples
We'll add this loop to the top of our song.
```ruby
live_loop :my_voice do
  sample "/Users/jessicagarson/Documents/recordings/no.wav"
  sleep 5
end
```

## Let's adjust the Rate and Beat_Stretch of this sample
We'll tweak this loop to create a strange effect.
```ruby
live_loop :my_voice do
  sample "/Users/jessicagarson/Documents/recordings/no.wav", beat_stretch: 3, rate: 0.5
  sleep 5
end
```

## Rate
Rate means the rate to play back. The default is 1. Playing the sample at rate 2 will play it back at double the normal speed. When we adjust the rate to 0.5 we slow it down.

## Beat_Stretch
Beat_Stretch allows us to stretch or shrink the sample to match the number of beats
