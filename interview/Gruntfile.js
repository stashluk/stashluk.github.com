module.exports = function(grunt) {
	grunt.initConfig({
		pkg: grunt.file.readJSON('package.json'),
		markdownpdf: {
			files: {
				src: '*.md',
				dest: 'dest/'
			}
		}
	});

	grunt.loadNpmTasks('grunt-markdown-pdf');
	grunt.registerTask('default', ['markdownpdf']);
};
