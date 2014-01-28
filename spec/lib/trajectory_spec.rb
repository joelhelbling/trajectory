require 'trajectory'

describe Trajectory do
  it { should respond_to :vertical_drop, :angle_of_reach }

  let(:distance_to_target) { 100 }
  let(:velocity) { 100 }

  specify '#vertical_drop' do
    subject.vertical_drop(distance_to_target, velocity).should == 4.9
  end

  describe '#angle_of_reach' do
    it 'returns degrees of inclination needed to hit target' do
      subject.angle_of_reach(distance_to_target, velocity).should == 2.8120065895999025
    end

    it 'returns an error for low relative velocities' do
      expect{ subject.angle_of_reach 10, 9.8994 }.to raise_error("Unable to reach target at this velocity.")
    end

  end

end