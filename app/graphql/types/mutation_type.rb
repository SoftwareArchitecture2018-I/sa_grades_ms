Types::MutationType = GraphQL::ObjectType.define do
  name 'Mutation'

  field :createGrade, function: Resolvers::CreateGrade.new
end