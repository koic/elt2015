Dir.glob(File.join(Rails.root, 'app', 'models', '**', '*.rb')).each {|f| require f }
