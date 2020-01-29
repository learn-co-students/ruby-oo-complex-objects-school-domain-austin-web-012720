require "pry"

class School
    attr_accessor :roster, :name 
    def initialize(name)
        @name = name 
        @roster = {}
    end


    def add_student(student_name, grade)
        @student_name = student_name
        @grade = grade

        if !roster.include?(grade)
            roster[grade] = []
        end 
        roster[grade] << student_name

    end

    def grade(num)
         @roster[num]
    end


    def sort
        sorted = {}
        roster.each do |grade, students|
            sorted[grade] = students.sort
        end
        sorted 

    end


end
