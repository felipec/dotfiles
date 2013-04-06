let g:notmuch_sendmail = 'msmtp'
let g:notmuch_rb_folders_count_threads = 1

let g:notmuch_folders = [
	\ [ 'new', 'tag:inbox and tag:unread' ],
	\ [ 'inbox', 'tag:inbox' ],
	\ [ 'unread', 'tag:unread' ],
	\ [ 'to-do', 'tag:to-do' ],
	\ [ 'git', 'tag:git and tag:unread' ],
	\ [ 'notmuch', 'tag:notmuch and tag:unread' ],
	\ [ 'gst-dsp', 'tag:gst-dsp' ],
	\ [ 'libscrobbler', 'tag:libscrobbler' ],
	\ ]

let g:notmuch_signature = [
	\ '',
	\ '-- ',
	\ 'Felipe Contreras'
	\ ]

let g:notmuch_rb_custom_search_maps = {
	\ 't':		'search_tag("+to-do -inbox")',
	\ 'y':		'search_tag("+inbox")',
	\ 'd':		'search_tag("+delete -inbox -unread")',
	\ }

let g:notmuch_rb_custom_show_maps = {
	\ 't':		'show_tag("+to-do -inbox")',
	\ 'd':		'show_tag("+delete -inbox -unread")',
	\ 'y':		'show_tag("+inbox")',
	\ }
