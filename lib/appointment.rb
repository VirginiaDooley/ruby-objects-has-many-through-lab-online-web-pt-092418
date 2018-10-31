require 'pry'

class Appointment

  @@all = []

  attr_accessor :patient, :doctor, :date

  def self.all
    @@all
  end

  def initialize(patient, doctor, date)
    @patient = patient
    @@all << self
    @doctor = doctor
    @date = date
  end

end
