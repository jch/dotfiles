// Modified from http://lyzidiamond.com/posts/github-notifications-google-script/
function processInbox() {
  var threads = GmailApp.getInboxThreads(0, 50);
  for (var i = 0; i < threads.length; i++) {
    var thread = threads[i];
    var messages = thread.getMessages();
    if (messages && ((messages[0].getFrom()).indexOf("github.com") > -1)) {
      if ((messages[0].getFrom()).indexOf("notifications@github.com") > -1) {
        thread.addLabel(GmailApp.getUserLabelByName("Notification"));
        for (var j = 0; j < messages.length; j++) {
          var message = messages[j];
          sortMessage(message, thread);
        }
      }
      thread.moveToArchive();
    }
  }
}

function sortMessage(message, thread) {
  var body = message.getRawContent();
  if (body.indexOf("X-GitHub-Reason: mention") > -1) {
    thread.addLabel(GmailApp.getUserLabelByName("Direct mention"));
  }
  if ((body.indexOf("X-GitHub-Reason: author") > -1) || (body.indexOf("X-GitHub-Reason: comment") > -1)) {
    thread.addLabel(GmailApp.getUserLabelByName("Participating"));
  }
  if (body.indexOf("X-GitHub-Reason: team_mention") > -1) {
    thread.addLabel(GmailApp.getUserLabelByName("Team mention"));
  }
}
