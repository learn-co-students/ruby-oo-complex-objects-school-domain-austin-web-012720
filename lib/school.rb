# code here!
require 'pry'
class School 
    attr_accessor :name, :roster, :add_student
    def initialize(name, roster={})
        @name = name
        @roster = roster
    end 

    def add_student(name, grade)
        if @roster.has_key?(grade)
            @roster[grade] << name
        else 
            @roster[grade] = []
            @roster[grade] << name
        end
    end

    def grade(n)
        if @roster.has_key?(n)
            @roster[n]
        end
    end

    def sort
        
        @roster.each do |grade, array|
            
            array.sort!
            #binding.pry
        end
        
        
    end
    
   
end 

school = School.new("Bayside High School")