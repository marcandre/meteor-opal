opalCompiler = (compileStep) ->
  source = compileStep.read().toString("utf8")
  compiled = Opal.compile source, file: compileStep._fullInputPath
  compileStep.addJavaScript
    path: "#{compileStep.inputPath}.js"
    sourcePath: compileStep.inputPath
    data: compiled

Plugin.registerSourceHandler "rb", opalCompiler
Plugin.registerSourceHandler "opal", opalCompiler