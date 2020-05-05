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
    self.appointments.last
  end

  def appointments
    Appointment.all.select do |appointment|
    appointment.doctor == self
    end
  end
  


  def patients
    p = []
    @a.collect do |appointment|
      @a.patient
    end
  end
  
  
 

end