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

  grunt.loadNpmTasks 'grunt-bowercopy'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-shell'
  grunt.loadNpmTasks 'grunt-notify'
