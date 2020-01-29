class School

  attr_accessor :roster, :student
  attr_reader :name

  def initialize(name, roster = {})
    @name = name
    @roster = roster
  end

  def add_student(stu_name, grade)
    if !@roster.has_key?(grade)
      roster[grade] = []
    end
    roster[grade] << stu_name
  end

  def grade(number)
    @roster[number]
  end

  def sort
    @roster.each_value do |level|
      level.sort!
    end
  end

end