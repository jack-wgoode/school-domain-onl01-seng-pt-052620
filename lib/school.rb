class School
  
  attr_reader :name, :roster
  
  def initialize(school_name)
    @name = school_name
    @roster = { }
  end
  
 def add_student(student_name, grade)
   @student_name = student_name
   @grade = grade
   if @roster[grade]
   @roster[@grade] << @student_name
   else
    @roster[grade] = [@student_name]
 end 
 
   
   def grade(grade)
      @roster[grade]
   end

   def sort 
     @roster.each do |grade, name|
       name.sort!
     end
   end
  
  end
end