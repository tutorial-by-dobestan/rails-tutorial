module.exports = (grunt) ->
  grunt.initConfig
    bowercopy: 
      options:
        clean: true
      libs:
        options:
          destPrefix: 'vendor/assets'
        files:
          'javascripts/bootstrap.min.js': 'bootstrap/dist/js/bootstrap.min.js'
          'stylesheets/bootstrap.min.css': 'bootstrap/dist/css/bootstrap.min.css'

    shell:
      rubocop:
        command: 'rubocop app'

      unittest:
        command: 'rake test'


    watch:
      app:
        files: 'app/**/*.rb'
        tasks: 'test'


    notify:
      rubocop:
        options:
          title: 'Success!'
          message: 'Ruby Style Guide | Success'

      unittest:
        options:
          title: 'Success!'
          message: 'UnitTest | Success'


  grunt.loadNpmTasks 'grunt-bowercopy'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-shell'
  grunt.loadNpmTasks 'grunt-notify'


  grunt.registerTask 'test', [
    'shell:rubocop'
    'notify:rubocop'
    'shell:unittest'
    'notify:unittest'
  ]

  grunt.registerTask 'default', [
    'bowercopy'
    'watch'
  ]
