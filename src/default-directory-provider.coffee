{Directory} = require 'pathwatcher'

module.exports =
class DefaultDirectoryProvider

  # Returns:
  # * {Directory} if the given URI is compatible with this provider.
  # * `null` if the given URI is not compatibile with this provider.
  directoryForURISync: (uri) ->
    new Directory(uri)

  # Returns a {Promise} that resolves to either:
  # * {Directory} if the given URI is compatible with this provider.
  # * `null` if the given URI is not compatibile with this provider.
  directoryForURI: (uri) ->
    Promise.resolve(@directoryForURISync(uri))
