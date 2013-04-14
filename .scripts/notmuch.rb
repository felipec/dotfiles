#!/usr/bin/ruby

require 'notmuch'

$config = {}

def get_config
  group = nil
  config = ENV['NOTMUCH_CONFIG'] || '~/.notmuch-config'
  File.open(File.expand_path(config)).each do |l|
    l.chomp!
    case l
    when /^\[(.*)\]$/
      group = $1
    when ''
    when /^(.*)=(.*)$/
      key = "%s.%s" % [group, $1]
      value = $2
      $config[key] = value
    end
  end

  $db_name = $config['database.path']
  $email_address = "%s <%s>" % [$config['user.name'], $config['user.primary_email']]
end

get_config

def print_mails(db, name, s)
  q = db.query(s)
  c = q.search_threads.count
  puts "%s: %u" % [name, c]
end

db = Notmuch::Database.new($db_name)

print_mails(db, 'new', 'tag:inbox and tag:unread')
print_mails(db, 'inbox', 'tag:inbox')
print_mails(db, 'unread', 'tag:unread')
print_mails(db, 'to-do', 'tag:to-do')
