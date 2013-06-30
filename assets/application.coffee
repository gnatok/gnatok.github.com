$ ->
  parallax.add "main", $("#main")
  parallax.add "cv", $("#cv")
  parallax.add "portfolio", $("#portfolio")
  parallax.add "contacts", $("#contacts")

  parallax.background = $("body")

  parallax.scaling = 0.4 #background moves 40% with the pages

  parallax.main.show()

  $(".menu-item-js").click (e) ->
    e.preventDefault()

    page = $(this).attr "data-page"

    switch page
      when "main"
        parallax.main.top();
      when "cv"
        parallax.cv.left();
      when "portfolio"
        parallax.portfolio.right();
      when "contacts"
        parallax.contacts.bottom();


