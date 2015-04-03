if Gem::Specification.find_by_name('capistrano').version >= Gem::Version.new('3.0.0')
  load File.expand_path('../tasks/crono.cap', __FILE__)
end
