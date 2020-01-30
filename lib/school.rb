class School
    attr_accessor :school_name, :roster

    def initialize (school_name)
        @school_name = school_name
        @roster = {}
    end

    def add_student(student_name,grade)
        if
            @roster[grade] == nil
                roster[grade] = []
        end
        
        @roster[grade] << student_name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        ret_hash = {}
        @roster.each do |grade, students_array|
            ret_hash[grade] = students_array.sort
        end

        ret_hash
    end
end


# def initialize(school_name)
#     @school_name = school_name
#     @roster = {}
# end

# def add_student(student_name, grade)
#     if @roster[grade] == nil
#         @roster[grade] = []
#     end

#     @roster[grade] << student_name
# end

# def grade(grade)
#     @roster[grade]
# end

# def sort
#     ret_hash = {}
#     @roster.each do |grade, students_array|
#         ret_hash[grade] = students_array.sort
#     end

#     ret_hash
# end