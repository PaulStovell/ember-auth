describe 'Auth.RESTAdapter', ->
  describe '#ajax', ->
    beforeEach ->
      spyOn Auth, 'ajax'
      Auth.RESTAdapter.create().ajax('foo', 'bar', { key: 'baz' })

    it 'delegates to Auth.ajax', ->
      expect(Auth.ajax.calls[0].args[0].url).toBe 'foo'
      expect(Auth.ajax.calls[0].args[0].type).toBe 'bar'
      expect(Auth.ajax.calls[0].args[0].key).toBe 'baz'

    it 'sets context', ->
      expect(Auth.ajax.calls[0].args[0].context).toBeDefined()
