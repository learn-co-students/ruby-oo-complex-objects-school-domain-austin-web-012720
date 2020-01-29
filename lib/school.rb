require 'pry'

class School

    attr_accessor :roster, :student_name, :grade

    def initialize(name)
        @name = name
        @roster = {} #{grade => [student_name, student_name, student_name]}
                     #{9 => ["Homer Simpson", "Bart Simpson"]}
    end

    def add_student(student_name, grade)
        if @roster[grade]
            @roster[grade] << student_name
        else
            @roster[grade] = []
            @roster[grade] << student_name
           
        end
    end

    def grade(grade)
        return @roster[grade]
    end

    def sort
        @roster.each do |grade, student_names|
            student_names.sort!
            
        end
    end
end