class Trajectory
  GRAVITY = 9.8
  DEGREES_PER_RADIAN = 57.2957795

  def vertical_drop(distance_to_target, velocity)
    time = distance_to_target / velocity.to_f
    ( GRAVITY * time**2 ) / 2
  end

  def angle_of_reach(distance_to_target, velocity)
    begin
      ( Math.asin(GRAVITY * distance_to_target / velocity**2) / 2 ) * DEGREES_PER_RADIAN
    rescue Math::DomainError => e
      raise "Unable to reach target at this velocity."
    end
  end

end

