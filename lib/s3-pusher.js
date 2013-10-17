// Generated by CoffeeScript 1.6.3
var S3Pusher, cli, fsu, version;

cli = require("./cli");

version = require('./utils/version');

fsu = require("fs-util");

S3Pusher = (function() {
  function S3Pusher() {
    var argv;
    argv = cli.argv;
    if (argv.version) {
      return console.log(version);
    } else if (argv.directory) {
      return this.push(argv.directory);
    } else {
      console.log(cli.help());
    }
  }

  S3Pusher.prototype.push = function(dir) {
    console.log(dir);
    return console.log(fsu.ls(dir));
  };

  return S3Pusher;

})();

module.exports = S3Pusher;