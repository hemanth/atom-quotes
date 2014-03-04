Quotes = (editor) ->
  selection = editor.getSelection()
  newText = "'#{selection.getText()}'"
  selection.insertText(newText)

module.exports =
  activate: ->
    atom.workspaceView.command 'Quotes:quote', '.editor', ->
      paneItem = atom.workspaceView.getActivePaneItem()
      Quotes(paneItem)

  Quotes: Quotes
