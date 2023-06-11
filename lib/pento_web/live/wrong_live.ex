defmodule PentoWeb.WrongLive do
  use Phoenix.LiveView, layout: {PentoWeb.LayoutView, "live.html"}

  def mount(_params, _session, socket) do
    {:ok, assign(socket, time: 0, score: 0, message: "Guess?")}
  end

  def render(assigns) do
          ~H"""
      <h1>Your score: <%= @score %></h1>
      <h2>
      <%= @message %>
      </h2>
      <h2>
      <%= for n <- 1..10 do %>
      <a href="#" phx-click="guess" phx-value-number= {n} ><%= n %></a>
      <% end %>
      </h2>
      <h2>
      <%= @message %>
      It's <%= @time %>
      </h2>
      """
  end

  def time() do
    DateTime.utc_now |> to_string
    end

  def handle_event("guess", %{"number" => guess}=data, socket) do
    message = "your guess: #{guess}. WRONG. Guess again"
    score = socket.assigns.score - 1
    current = time()

    {
      :noreply,
      assign(
        socket,
        time: current,
        message: message,
        score: score
      )
    }
  end

end
