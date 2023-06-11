# Basics-LiveView
in Prep for this issue: https://github.com/glific/glific/issues/2790,

I started learning LiveView from this book "Programming Phoenix LiveView by Bruce A. Tate and Sophie DeBenedetto"

This repo shows that I learnt about:

1) State Holding: Done by LiveView sockets
2) The Route -> Mount -> Render cycle for the initial HTTP request
3) After which, a persistent connection is established using a WebSocket, and the
4) Render State -> Receive Event -> Change state cycle
5) Updating socket.assigns causes the app to re-render (by sending diffs)
6) Added a "time" feature that updates on every event (which was an exercise)
