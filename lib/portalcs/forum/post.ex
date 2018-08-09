defmodule Portalcs.Forum.Post do
  use Ecto.Schema
  import Ecto.Changeset
  alias Portalcs.Coherence.User


  schema "post" do
    field :path, :string
    field :tag, :string
    field :title, :string
    belongs_to(:user, User)

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:title, :tag, :path, :user_id])
    |> validate_required([:title, :tag, :path, :user_id])
  end
end
