// This is a test harness for your module
// You should do something interesting in this harness 
// to test out the module and to provide instructions 
// to users on how to use it by example.

var config = require('config');

var window = Ti.UI.createWindow({
	backgroundColor:'white'
});
var table = Ti.UI.createTableView({
	data: [{title: "loading..."}]
});
window.add(table);
window.open();

// TODO: write your module tests here
var evernote = require('jp.masuidrive.ti.evernoteapi');

Ti.API.info("module is => " + evernote);
Ti.API.info(evernote.Types.EDAM_NOTE_SOURCE_MAIL_CLIP);
Ti.API.info(evernote.Types.PrivilegeLevel);
Ti.API.info(evernote.Types.PrivilegeLevel.SUPPORT);

// You can get developer token for sandbox:
// https://sandbox.evernote.com/api/DeveloperToken.action
// You can get developer token for production:
// https://www.evernote.com/api/DeveloperToken.action
var developerToken = '<YOUR DEVELOPER TOKEN HERE>';

var userstore = evernote.createUserStoreClient(config.url+"user");

userstore.getNoteStoreUrl(developerToken, function(event) {
	if(event.type == 'success') {
		var notestore = evernote.createNoteStoreClient(event.result);
		
		var notes = notestore.listNotebooks(developerToken, function(event2) {
			table.data = event2.result.map(function(note){ return({title: note.name}); });
			
			var note = evernote.createNote({title: "Test"});

			var content = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>";
			content = content +"<!DOCTYPE en-note SYSTEM \"http://xml.evernote.com/pub/enml.dtd\">";
			content = content +"<en-note>";
			content = content +"This note is craeted for testing.";
			content = content +"</en-note>";
			note.content = content;
			
			note.tagNames = ['tag1', 'tag2'];
			
			var data = evernote.createData();
			var file = Ti.Filesystem.getFile(
				Titanium.Filesystem.resourcesDirectory + '/appcelerator_ja.png'
			);
			data.body = file.read();
			data.size = data.body.length;

			var attrs = evernote.createResourceAttributes();
			attrs.fileName = "appcelerator_ja.png";
			
			var res = evernote.createResource();
			res.data = data;
			res.mime = "image/png";
			res.attributes = attrs;
			
			note.resources = [res];

			notestore.createNote(developerToken, note, function(event) {
				Ti.API.info(event);
				if(event.type == 'success') {
					alert("Create new note");
				}
				else {
					alert(event.error);
				}
			});
		});
	}
	else {
		Ti.API.info(event);
		alert(event.error.message);
	}
});
