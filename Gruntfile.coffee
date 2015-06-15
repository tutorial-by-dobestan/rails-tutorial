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


  grunt.loadNpmTasks 'grunt-bowercopy'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-shell'
  grunt.loadNpmTasks 'grunt-notify'


  grunt.registerTask 'test', [
    'shell:rubocop'
    'shell:unittest'
  ]
