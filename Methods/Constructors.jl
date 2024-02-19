mutable struct ModelVars
    x₁ :: Float64
    x₂ :: Float64
    x₃ :: Float64
end

fieldnames(ModelVars)

m1 = ModelVars(2.5, 5.6, 7.8)
methods(ModelVars)

m1.x₁
m1.x₂
m1.x₃

m1.x₃ = 6.2 # mutable types are more flexible but immutiple types are more optimized

abstract type Student end

mutable struct  CSStudent <: Student
    name :: String
    studentID :: Int64
    gpa :: Float64
    specialization :: String
    programmingLanguage :: String
end

methods(CSStudent)

cs1 = CSStudent("Emre", 220302289, 3.55, "Artificial Intelligence", "Julia")
# Setting some default values 
CSStudent(name, studentID, gpa) = CSStudent(name, studentID, gpa, "Data Science",  "Julia")
methods(CSStudent)

cs2 = CSStudent("Mary",  112233, 3.95)

# Time to use keyword arguments 

function CSStudent(; name, studentID, gpa = NaN, specialization = "Data Science", programmingLanguage = "Julia")
    return CSStudent(name, studentID, gpa, specialization, programmingLanguage)
end
    
methods(CSStudent)

cs3 = CSStudent(name = "George", studentID = 1234, gpa = 3, specialization = "Aritificial Intelligence")

students = CSStudent[]
push!(students, cs1, cs2, cs3)

# All of there were outer constructor, but there are also inner constructors

mutable struct MathStudent 
    name :: String
    studentID :: Int64
    gpa :: Float64

    MathStudent(name, studentID, gpa) = gpa < 0 ? throw("gpa cannot be negative") : new(name, studentID, gpa) # Inner structs have access to the 'new' function
end

m1 = MathStudent("Emre", 220302289, 3)
m2 = MathStudent("Emre", 220302289, -3) # Throws an error 

mutable struct EconStudent 
    name :: String
    studentID :: Int64
    gpa :: Float64

    function EconStudent(name, studentID, gpa)
        if name == ""
            throw("Student name cannot be empty")
        elseif studentID == NaN || studentID == 0
            throw("Student ID cannot be empty")
        elseif gpa < 0 || gpa > 4.0
            throw("Enter a valid gpa!")
        else
            new(name,studentID,gpa)
        end      
    end
end

es1 = EconStudent("", 12312312, 3.2) # Invalid name
es1 = EconStudent("Emre", 0, 3.2) # Invalid student ID 
es1 = EconStudent("Emre", 12312312, 3.2) # Ok
es1 = EconStudent("Emre", 12312312, 5) # Invalid GPA

MathStudent() # no method matching 


mutable struct PhysStudent <: Student
    name :: String
    studentID :: Int64
    gpa :: Float64

    PhysStudent() = new()
end

sp1 = PhysStudent() # values might be undefined or some random values put in my Julia
methods(PhysStudent) # One an inner struct is used there are no more default made constructors :(

mutable struct Course
    name :: String
    student :: Array{Union{CSStudent, MathStudent, EconStudent}, 1}
    opened :: Bool

    Course(name :: String) = new(name :: String,[], false)
    Course(name :: String, members) = new(name, members, length(members) ≥ 5)
end

julia101 = Course("Programming with Julia")