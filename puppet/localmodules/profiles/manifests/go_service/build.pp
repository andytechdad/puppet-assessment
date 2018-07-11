# Build the "service" golang app
class profiles::go_service::build {
  exec {'build-go_service':
    path    => '/usr/bin/',
    command => 'go build /vagrant/app/go-service.go',
    creates => '/vagrant/app/go-service',
    cwd     => '/vagrant/app'
  }
}
