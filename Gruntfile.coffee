module.exports = (grunt) ->
  grunt.initConfig
    ngmin:
      dist:
        src: 'angular-storage-sync.js',
        dest: 'build/angular-storage-sync.js'
    uglify:
      dist:
        src: 'build/angular-storage-sync.js'
        dest: 'angular-storage-sync.min.js'

  grunt.loadNpmTasks 'grunt-ngmin'
  grunt.loadNpmTasks 'grunt-contrib-uglify'
  grunt.registerTask 'default', ['ngmin', 'uglify']
