# Public: Install tidy-html5 via homebrew
#
# Examples
#
#   include tidy_html5
class tidy_html5 {
  include homebrew

  homebrew::formula { 'tidy-html5':
    before => Package['boxen/brews/tidy-html5']
  }

  package { 'boxen/brews/tidy-html5':
    install_options => '--HEAD'
  }
}
