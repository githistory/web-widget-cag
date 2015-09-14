exports.config =
  modules:
    wrapper: false
  paths:
    public: './dist'
    watched: ['app', 'demo']
  conventions:
    assets: /^app\/assets/
  files:
    javascripts:
      joinTo:
        'js/widget.js': /^(app|bower_components)/
        'demo/js/widget.js': /^demo/
      order:
        after: [
          'app/scripts/**/*.coffee'
          'app/**/*.coffee'
        ]
    stylesheets:
      joinTo:
        'css/widget.css': /^(app|bower_components)/
        'demo/css/widget.css': /^demo/
    templates:
      joinTo:
        'js/widget.js': /^app/
        'demo/js/widget.js': /^demo/
      order:
        after: [
          'app/**/*.jade'
        ]

  plugins:
    ng_annotate:
      pattern: /^app/
    angularTemplate:
      moduleName: 'widget.cgg'
      pathToSrc: (old)->
        old.replace(/\.jade$/, '')
      ignore: [/^.*\.static\.jade/]
    jadePages:
      destination: (path) ->
        path.replace /^(.*)\.static\.jade$/, '$1.html'
      pattern: /^.*\.static\.jade/
      jade:
        pretty: true

