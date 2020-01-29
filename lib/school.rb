class School
  attr_reader :name
  attr_accessor :student, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    # if roster has no grade specified
    # create grade key with student array as value
    # otherwise add more students to grade they are part of
    if @roster[grade] == nil
      @roster[grade] = [name]
    else 
      @roster[grade] << name
    end
  end

  def grade(grade)
    # getter for students per grade
    @roster[grade]
  end
  
  def sort
    # sort students within a grade
    sorted_stu = {}
    @roster.each do |grade, stu|
      sorted_stu[grade] = stu.sort
    end 
    sorted_stu
  end 

end 