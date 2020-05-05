class Doctor

  attr_reader :name, :patient, :appointment

  @@all_doc = []

  def initialize(name)
    @name = name
    @@all_doc << self
  end

  def self.all
    @@all_doc
  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end
  


  def patients
    Appointments.all.collect do |appointment|
      appointment.patient
    end
  end
  
  
 

end