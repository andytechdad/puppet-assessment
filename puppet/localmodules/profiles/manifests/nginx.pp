class profiles::nginx {

  class { 'nginx': }

  nginx::resource::server { 'app.lan':
      listen_port => 8080,
      proxy       => 'http://localhost:8484',
  }
}
