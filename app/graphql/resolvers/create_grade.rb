class Resolvers::CreateGrade < GraphQL::Function
  
    argument :student_id, !types.Int
    argument :course_id, !types.Int
    argument :grade_value, !types.Float

  
    
    type Types::GradeType
  
    def call(_obj, args, _ctx)
      Grade.create!(
        student_id: args[:student_id],
        course_id: args[:course_id],
        grade_value: args[:grade_value],
      )
    end
  end