// gulp to middleman
// http://qiita.com/nagomu/items/ad6c0e379af2907679b4#watch-%E3%82%92%E8%BF%BD%E5%8A%A0%E3%81%99%E3%82%8B

'use static';

var gulp = require('gulp');
var $    = require('gulp-load-plugins')({
             pattern: ['gulp-*', 'gulp.*'],
             replaceString: /\bgulp[\-.]/
           });

// // Require tasks
var tasks = './node_modules/tasks';

require(tasks+'/server.js')(gulp, $);

// Run
gulp.task('default', ['server']);

// gulp.task('default');
