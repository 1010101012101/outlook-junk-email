--
-- Purpose:	process junk e-mail more satisfactorily
-- Author:	Craig Buchanan
-- Version:	0.1.0
-- Revisions:
--	2014/06/03	inital release	0.1.0
-- Todo:
--	fix error related to "system events" when script is run from Outlook's script menu
--	add domains to blocked-sender's list
--	assign keyboard accelerator to script
--
tell application "Microsoft Outlook"
	
	try
		set theMessages to current messages
		set theCount to count of theMessages
		
	on error
		display dialog "Select a messages before running this script." buttons {"Quit Script"} default button 1 with icon stop
		return
		
	end try
	
	# TODO: get blocked senders
	# set theBlockedSendersList to my getBlockedSenders()
	
	repeat with theMessage in theMessages
		
		set theSender to sender of theMessage
		set theAddress to address of theSender
		
		# block sender's email address
		my blockSender()
		
		# TODO: add to list
		# block sender's domain
		#if theBlockedSendersList does not contain theAddress then set theAddress to the end of theBlockedSendersList
		
		my forwardMessage(theMessage, "spam@sherweb.com")
		
		# Mark as Junk (⇧⌘J); move message to Junk E-mail folder; categorize as 'Junk'
		# Is the workflow valuable?  Does it do anything other than move the message and flag it?		
		tell application "System Events" to key code 38 using {shift down, command down}
		
		# delete the message
		# permanently delete theMessage
		
	end repeat
	
	# TODO: save blocked senders
	#my setBlockedSenders(theBlockedSendersList)
	
	# process spam folder
	set theJunkMailFolder to junk mail
	set theMessages to every message in theJunkMailFolder
	
	repeat with theMessage in theMessages
		
		# delete the message
		permanently delete theMessage
		
	end repeat
	
	display dialog (theCount as text) & " messages processed" with title "Junk E-mails" buttons {"OK"} default button 1
	
end tell

--
-- Purpose:	forward message
-- Parameters:
--	theMessage - message to be forwarded
--	theRecipient - the message's recipient
-- Returns:	nil
--
on forwardMessage(theMessage, theRecipient)
	
	tell application "Microsoft Outlook"
		
		set theForward to forward theMessage to theRecipient without opening window
		send theForward
		
	end tell
	
end forwardMessage

--
-- Purpose:	Add the sender's address to Outlook's Blocked Senders list (Message > Junk E-mail > Block Sender)
-- Parameters:	None
-- Returns:	nil
--
on blockSender()
	
	tell application "Microsoft Outlook" to activate
	tell application "System Events"
		click menu item "Block Sender" of menu "Junk Mail" of menu item "Junk Mail" of menu "Message" of menu bar item "Message" in menu bar 1 of process "Microsoft Outlook"
	end tell
	
end blockSender

--
-- Purpose:	Add the sender's domain to Outlook's Blocked Senders list (Tools > Junk E-mail Protection...)
-- Parameters:	
--	theMessage - message to be processed
-- Returns:	list
--
on getBlockedSenders()
	
	-- TODO: implement code to get block-senders' list
	-- get blocked-senders list
	#	tell application "System Events"
	#		set theList to value of text field 1 in window 1 of process "Outlook"
	#	end tell
	
	set theList to "iamsinc.net, fieldsleft.biz, uawei-itleadersforum.com, truthaboutsecrets.com, ecyclingsolutions.com, safeupay.pw, eggerm.us, blogicnyc.com, perfectstormeurope.com, cahuageo.me, masterclassinstitute.nl, aorders.me, giveral.com, mitsymposium.nl, roughsmooth"
	
	return split(theList)
	
end getBlockedSenders

--
-- Purpose:	Add the sender's domain to Outlook's Blocked Senders list (Tools > Junk E-mail Protection...)
-- Parameters:	
--	theMessage - message to be processed
-- Returns:	nil
--
on setBlockedSenders(theList)
end setBlockedSenders

--
-- Purpose:	extract domain from email address
-- Parameters:	
--	theAddress - email address to be processed
-- Returns:	string
--
on getDomain(theAddress)
	
	-- extract domain
	set text item delimiters to {"@"}
	return text item 2 of theAddress
	
end getDomain

--
-- Purpose:	convert comma-delimited text to list
-- Parameters:	
--	theText - comma-delimited text
-- Returns:	list
--
on split(theText)
	
	set {myTID, AppleScript's text item delimiters} to {AppleScript's text item delimiters, {","}}
	
	set theList to text items of theText
	
	set AppleScript's text item delimiters to myTID -- It's considered good practice to return the TID's to their original state
	
	return theList
	
end split
