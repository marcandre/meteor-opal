Package.describe({
  summary: "Ruby runtime and core library for javascript"
});

Package._transitional_registerBuildPlugin({
  name: "compileOpal",
  use: ['coffeescript'],
  sources: [
    'vendor/opal.js',
    'plugin/opal-compile.coffee'
  ]
});

Package.on_use(api => {
  api.export('Opal', ['client', 'server']);
  api.add_files('vendor/opal.js', ['client', 'server']);
  api.add_files('plugin/file.rb', 'server');
  api.add_files('plugin/print.rb', 'server');
});

Package.on_test(api => {
  api.use(['opal', 'tinytest', 'coffeescript']);
  api.add_files([
    'tests/opal_tests.rb',
    'opal_tests.coffee'
  ], ['client', 'server']);
  api.add_files([
    'tests/opal_tests_server.rb',
  ], 'server');
});
