# Trajectory

A simple calculator for winning at beer pong.

## Vertical Drop

Given a distance to target in meters, and a velocity in m/s, the `#vertical_drop` method will calculate the distance in meters that a projectile would drop relative to the point of origin.

```ruby
t = Trajectory.new
t.vertical_drop 100, 1000 #=> 0.049000000000000016 (in meters)
```

## Angle of Reach

Given a distance to target in meters and a velocity in m/s, the `#angle_of_reach` method will calculate the angle of inclination required in order to hit a target at the same height as the point of origin.

```ruby
t.angle_of_reach 100, 100 #=> 2.8120065895999025 (in degrees)
```

Note, if a velocity is supplied which is too slow for the projectile to _ever_ reach the target, a RuntimeError will be thrown.

# Gravity

It should be noted that gravity is hard-coded in meters/s^2 (i.e. 9.8).  Thus the units of measure for all parameters should be meters.