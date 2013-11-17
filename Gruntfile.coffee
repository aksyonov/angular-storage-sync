module.exports = (grunt) ->
  grunt.initConfig
    uglify:
      dist:
        src: "angular-storageSync.js"
        dest: "angular-storageSync.min.js"
  grunt.loadNpmTasks 'grunt-contrib-uglify'
  grunt.registerTask 'default', ["uglify"]
