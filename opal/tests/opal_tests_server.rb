# First line!

line = File.read(__FILE__).lines.first
%x[
  Tinytest.add("opal - File.read", function(test) {
    test.equal("# First line!", #{line});
  });
]