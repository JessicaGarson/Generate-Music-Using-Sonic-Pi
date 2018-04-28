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
