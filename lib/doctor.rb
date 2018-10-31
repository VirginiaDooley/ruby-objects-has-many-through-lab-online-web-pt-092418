require 'pry'

class Doctor

  @@all = []

  attr_accessor :name, :patients, :appointments

  def initialize(name)
    @name = name
    @patients = []
    @@all << self
    @appointments = []
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    appointment = Appointment.new(patient, self, date)
    self.appointments << appointment
    appointment
  end

  def patients
    self.appointments.collect do |appointment|
      appointment.patient
    end
  end

end
