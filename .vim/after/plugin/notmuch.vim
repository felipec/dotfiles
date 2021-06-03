let g:notmuch_sendmail = 'msmtp'
let g:notmuch_folders_count_threads = 1

let g:notmuch_folders = [
	\ [ 'inbox', 'tag:inbox and not tag:git' ],
	\ [ 'to-me', 'tag:inbox and to:felipe.contreras' ],
	\ [ 'new', 'tag:inbox and tag:unread' ],
	\ [ 'git', 'tag:inbox and tag:git' ],
	\ [ 'to-do', 'tag:to-do' ],
	\ ]

let g:notmuch_custom_search_maps = {
	\ 'd':		'search_tag("+deleted -inbox -unread")',
	\ }

let g:notmuch_custom_show_maps = {
	\ 'd':		'show_tag("+deleted -inbox -unread")',
	\ }
