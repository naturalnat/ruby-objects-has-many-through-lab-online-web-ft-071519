class Doctor
  attr_accessor :name, :patient, :date

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def appointments
    Appointment.all.select{ |appointment| appointment.doctor == self }
  end

  def new_appointment(patient, date)
  Appointment.new(patient, self, date)
  end

  def self.all
    @@all
  end

  def patients
    self.appointments.map{|appt| appt.patient}
  end

end
