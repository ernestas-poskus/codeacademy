require 'evernote_oauth'

auth_token = "S=s1:U=8cd89:E=149e56ba66e:C=1428dba7a71:P=1cd:A=en-devtoken:V=2:H=a8a094f7323989f5d4252a1f5b7f0646"


client  = EvernoteOAuth::Client.new(token: auth_token)


note_store =  client.note_store

notebooks = note_store.listNotebooks

note = Evernote::EDAM::Type::Note.new
note.title = "Hello from Codecademy"


note.content = '<?xml version="1.0" encoding="UTF-8"?><!DOCTYPE en-note SYSTEM "http://xml.evernote.com/pub/enml2.dtd"><en-note>Hello Evernote<br/></en-note>'


note_store.createNote(note)