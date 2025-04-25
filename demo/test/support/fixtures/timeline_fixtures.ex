defmodule Demo.TimelineFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Demo.Timeline` context.
  """

  @doc """
  Generate a post.
  """
  def post_fixture(attrs \\ %{}) do
    {:ok, post} =
      attrs
      |> Enum.into(%{
        body: "some body",
        likes_count: 42,
        photo_locations: ["option1", "option2"],
        repost_count: 42
      })
      |> Demo.Timeline.create_post()

    post
  end
end
