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
    @a = []
    Appointment.all.select do |appointment|
     a << appointment.doctor == self
    end
    a
  end
  


  def patients
    p = []
    @a.all.collect do |appointment|
      @a.patient
    end
  end
  
  
 

end