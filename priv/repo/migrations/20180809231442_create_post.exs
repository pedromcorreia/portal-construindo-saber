defmodule Portalcs.Repo.Migrations.CreatePost do
  use Ecto.Migration

  def change do
    create table(:post) do
      add :title, :string
      add :tag, {:array, :string}
      add :path, {:array, :string}
      add :user_id, references(:users, on_delete: :delete_all)

      timestamps()
    end

  end
end
