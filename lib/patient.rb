require 'pry'

class Patient

  @@all = []

  attr_accessor :name, :appointments, :doctor

  def initialize(name)
    @name = name
    @@all << self
    @appointments = []
    @doctor = doctor
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(self, doctor, date)
    # binding.pry
    self.appointments << appointment
    appointment
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

  def doctors
    self.appointments.collect do |appointment|
      appointment.doctor
    end
  end

end
