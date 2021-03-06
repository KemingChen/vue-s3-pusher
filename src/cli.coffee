optimist = require 'optimist'
colors = require 'colors'

version = require './utils/version'

usage = """
  S3-Pusher #{('v' + version).grey}
  #{'Publish assets to Amazon\'s S3 service via CLI.'.grey}

  #{'Usage:'}
    s3-pusher [#{'options'.green}] [#{'params'.green}]
"""

examples = """
  #{'Example:'.green}
    s3-pusher -a <access-key> -s <secret-key> -b <bucket-name> -d <source-directory>
"""

options = process.argv.slice 0

optimistic = optimist( options ).usage( usage )
  .alias('a', 'access_key')
  .describe('a', "Amazon S3 access key")
  .alias('s', 'secret_key')
  .describe('s', "Amazon S3 secret key")
  .alias('b', 'bucket')
  .describe('b', "Amazon S3 bucket name")
  .alias('d', 'directory')
  .describe('d', "Source directory with the assets to be sent")
  .alias('v', 'version')
  .boolean('v')
  .describe('v', 'Show version')

exports.argv = optimistic.argv

exports.help = ->
  "#{optimistic.help()}\n#{examples}"

exports.examples = ->
  "#{examples}"
