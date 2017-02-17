CalltoBouncer is a macOS utility that handles `callto` URL open events
by opening `tel` URLs with the same phone number.

It might be useful when you make phone calls by clicking the `callto`
links and you want those calls to be made via an application that only
responds to the `tel` URLs.

If another application that handles the `callto` URLs is already
present in the system and being opened, CalltoBouncer needs to be set
as a handler for this URL scheme. This can be done via the
[RCDefaultApp] perference pane.

CalltoBouncer works in background and doesn't have any UI. Once
registered as a handler, it doesn't even need to be automatically
started with the system strart, because the system launches it when
needed.

[RCDefaultApp]: http://www.rubicode.com/Software/RCDefaultApp/
