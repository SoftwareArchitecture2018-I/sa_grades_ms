Types::GradeType = GraphQL::ObjectType.define do

    name 'Grade'
 
    field :id, !types.ID
    field :student_id, !types.Int
    field :course_id, !types.Int
    field :grade_value, !types.Int
 
  end