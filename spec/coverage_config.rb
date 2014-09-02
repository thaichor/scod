if ENV['COVERAGE'] || ENV['CI']
  require 'simplecov'
  require 'coveralls'

  SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
    SimpleCov::Formatter::HTMLFormatter,
    Coveralls::SimpleCov::Formatter
  ]

  SimpleCov.start do
    add_filter '/spec/'
    add_filter '/config/'
    add_filter '/yoolk_engines/'

    add_group 'Controllers',  'app/controllers'
    add_group 'Models',       'app/models'
    add_group 'Libraries',    'lib'
  end
end