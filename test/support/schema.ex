defmodule Test.Schema do
  @moduledoc false
  use GraphqlQuery.Schema

  @impl GraphqlQuery.Schema
  def schema do
    ~GQL"""
    type Query {
      user(id: ID): User
    }

    type User {
      id: ID!
      name: String!
      email: String!
      legacy_id: Int! @deprecated(reason: "use id instead")
      old_email: String! @deprecated
    }
    """s
  end

  @impl GraphqlQuery.Schema
  def schema_path, do: nil
end
