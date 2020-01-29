require 'pry'

class School

    attr_accessor :roster
    attr_reader :name

    def initialize(name)
        @name
        @roster = {}
    end

    def add_student(student_name, student_grade)

        if !@roster[student_grade]
            @roster[student_grade] = []
        end

        @roster[student_grade] << student_name
    end

    def grade(student_grade)
        @roster[student_grade]
    end

    def sort
        
        @roster.each do |grade, array_o_students|
            array_o_students.sort!
        end
        
    end

end
