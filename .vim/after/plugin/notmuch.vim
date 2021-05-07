let g:notmuch_sendmail = 'msmtp'
let g:notmuch_folders_count_threads = 1

let g:notmuch_folders = [
	\ [ 'new', 'tag:inbox and tag:unread date:today' ],
	\ [ 'to-do', 'tag:to-do' ],
	\ ]

let g:notmuch_custom_search_maps = {
	\ 'T':		'search_tag("+to-do -inbox")',
	\ 'd':		'search_tag("+deleted -inbox -unread")',
	\ }

let g:notmuch_custom_show_maps = {
	\ 'T':		'show_tag("+to-do -inbox")',
	\ 'd':		'show_tag("+deleted -inbox -unread")',
	\ }
