let g:notmuch_sendmail = 'msmtp'
let g:notmuch_folders_count_threads = 1

let g:notmuch_folders = [
	\ [ 'to-me', 'tag:inbox and tag:unread date:1-day-ago.. to:felipe.contreras' ],
	\ [ 'new', 'tag:inbox and tag:unread date:1-day-ago..' ],
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
