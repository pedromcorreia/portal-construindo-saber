
Portalcs.Repo.delete_all Portalcs.Coherence.User

Portalcs.Coherence.User.changeset(%Portalcs.Coherence.User{}, %{name: "Test User", email: "testuser@example.com", password: "secret", password_confirmation: "secret", role: "teacher"})
|> Portalcs.Repo.insert!

Portalcs.Coherence.User.changeset(%Portalcs.Coherence.User{}, %{name: "basic", email: "basic@mail.com", password: "1234", password_confirmation: "1234", role: "community"})
|> Portalcs.Repo.insert!

