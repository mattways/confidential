module Confidential
  class Railtie < Rails::Railtie
 
    config.before_configuration do
      confidential_file = Rails.root.join('config', 'confidential.yml')  
      if File.exist? confidential_file and envs = YAML.load(File.read(confidential_file)) 
        envs.each { |key, value| ENV[key] = value }
      end
    end

  end
end
