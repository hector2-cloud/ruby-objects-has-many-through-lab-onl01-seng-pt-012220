class Patient
  
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(doctor, date)
    new = Appointment.new(date, self, doctor)
  end
  
  def self.all
    @@all
  end
  
  def appointments
    Appointment.all.select { |app| app.patient == self }
  end
  
  def doctors
    appointments.map { |app| app.doctor }
  end
  
end