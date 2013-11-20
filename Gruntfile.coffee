module.exports = (grunt) ->
  grunt.initConfig
    uglify:
      dist:
        src: 'angular-storage-sync.js'
        dest: 'angular-storage-sync.min.js'

  grunt.loadNpmTasks 'grunt-contrib-uglify'
  grunt.registerTask 'default', ['uglify']
