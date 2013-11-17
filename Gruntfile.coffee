module.exports = (grunt) ->
  grunt.initConfig
    ngmin:
      dist:
        src: 'angular-storageSync.js',
        dest: 'build/angular-storageSync.js'
    uglify:
      dist:
        src: 'build/angular-storageSync.js'
        dest: 'angular-storageSync.min.js'

  grunt.loadNpmTasks 'grunt-ngmin'
  grunt.loadNpmTasks 'grunt-contrib-uglify'
  grunt.registerTask 'default', ['ngmin', 'uglify']
