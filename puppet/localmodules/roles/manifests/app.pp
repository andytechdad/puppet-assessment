# App role for app instance
class roles::app {
  include ::profiles::golang
  include ::profiles::go_service::build
  include ::profiles::go_service::run
  include ::profiles::nginx

  Class['profiles::golang'] -> Class['profiles::go_service::build'] ~> Class['profiles::go_service::run']
}
