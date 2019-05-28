defmodule Rumbl.Repo.Migrations.CreateAnnotation do
  use Ecto.Migration

  def change do
    create table(:annotation) do
      add :body, :text
      add :at, :integer
      add :user_id, references(:users, on_delete: :nothing)
      add :video_id, references(:videos, on_delete: :nothing)

      timestamps()
    end

    create index(:annotation, [:user_id])
    create index(:annotation, [:video_id])
  end
end
