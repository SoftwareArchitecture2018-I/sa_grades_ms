Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'

  # queries are just represented as fields
  field :allGrades, !types[Types::GradeType] do
    # resolve would be called in order to fetch data for that field
    resolve -> (obj, args, ctx) { Grade.all }
  end
end
