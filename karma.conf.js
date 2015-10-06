module.exports = function(config) {
  config.set({
    basePath: '.',
    reporters: ['progress', 'junit'],
    frameworks: ['dart-unittest'],

    files: [
      "test/*_test.dart",
      "packages/guinness/init_specs.dart",
      {pattern: '**/*.dart', watched: true, included: false, served: true}
    ],


    autoWatch: true,
    captureTimeout: 120000,
    browserNoActivityTimeout: 1500000,

    plugins: [
      'karma-dart',
      'karma-chrome-launcher',
      'karma-junit-reporter'
    ],

    browsers: ['Dartium'],

    junitReporter: {
      outputFile: 'shippable/testresults/unit.xml',
      suite: 'unit'
    }

  });
};