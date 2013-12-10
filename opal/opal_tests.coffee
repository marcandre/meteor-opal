Tinytest.add "opal - presence", (test) ->
  test.isTrue(Meteor.__OPAL_PRESENT)

Tinytest.add "opal - callable", (test) ->
  test.equal(Opal.MyOpalTestClass.$foo(), 42)
