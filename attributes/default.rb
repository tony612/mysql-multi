# encoding: UTF-8

default['mysql-multi']['master'] = nil
default['mysql-multi']['master_port'] = 3306
default['mysql-multi']['slaves'] = %w()
default['mysql-multi']['slave_user'] = 'replicant'
default['mysql-multi']['server_repl_password'] = nil
default['mysql-multi']['bind_ip'] = nil

default['mysql-multi']['templates']['my.cnf']['cookbook'] = 'mysql-multi'
default['mysql-multi']['templates']['my.cnf']['source'] = 'my.cnf.erb'

default['mysql-multi']['templates']['user.my.cnf']['cookbook'] = 'mysql-multi'
default['mysql-multi']['templates']['user.my.cnf']['source'] = 'user.my.cnf.erb'

default['mysql-multi']['templates']['slave.cnf']['cookbook'] = 'mysql-multi'
default['mysql-multi']['templates']['slave.cnf']['source'] = 'slave.cnf.erb'

default['mysql-multi']['templates']['master.cnf']['cookbook'] = 'mysql-multi'
default['mysql-multi']['templates']['master.cnf']['source'] = 'master.cnf.erb'

default['mysql-multi']['cnf']['innodb_buffer_pool_size'] = '10M'
default['mysql-multi']['cnf']['max_allowed_packet'] = '16M'

default['mysql-multi']['cnf']['slow_query_log'] = 1
default['mysql-multi']['cnf']['long_query_time'] = 0.1
default['mysql-multi']['cnf']['log_queries_not_using_indexes'] = 0
default['mysql-multi']['cnf']['slow_query_log_file'] = '/var/log/mysql/slow_query.log'
