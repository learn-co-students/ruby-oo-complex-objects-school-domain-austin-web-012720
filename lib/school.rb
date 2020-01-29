# code here!
require 'pry'
class School

    attr_accessor :roster

    def initialize(model)
        @model = model
        @roster = {}
    end

    def add_student(name, grade)
        if !@roster.include?(grade)
            @roster[grade] = [name]
        else
            @roster[grade] << name
        end
    end

    def grade(num)
        @roster[num]
    end

    def sort
        @roster.map do |grade, students|
            students.sort!
        end
        
        grade_new = @roster.sort_by { |grade, students| students }

        grade_new = grade_new.reverse.each do |grade, students|
            students
        end
        new_hash = {}
        grade_new.each do |grade, students|
            new_hash[grade] = students
        end


        #binding.pry
        new_hash
    end



end 
