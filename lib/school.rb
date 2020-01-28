class School
    attr_accessor :roster
    def initialize(school_name)
        @school_name = school_name
        @roster = {}

    end

    def add_student(name, grade)
        if !roster.include?(grade)
            roster[grade] = []
        end
        roster[grade]<<name
    end

    def grade(g)
        return roster[g]
    end

    def sort
        @roster.each_key do |grade|
            roster[grade].sort!
        end
    end

end