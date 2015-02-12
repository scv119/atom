DefaultDirectoryProvider = require '../src/default-directory-provider'

describe "DefaultDirectoryProvider", ->
  describe ".directoryForURISync(uri)", ->
    it "returns a Directory with a path that matches the uri", ->
      provider = new DefaultDirectoryProvider()
      uri = '/tmp/somewhere'
      directory = provider.directoryForURISync(uri)
      expect(directory.getPath()).toEqual uri

  describe ".directoryForURI(uri)", ->
    it "returns a Promise that resolves to a Directory with a path that matches the uri", ->
      provider = new DefaultDirectoryProvider()
      uri = '/tmp/somewhere'

      waitsForPromise ->
        provider.directoryForURI(uri).then (directory) ->
          expect(directory.getPath()).toEqual uri
