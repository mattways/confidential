module Confidential
  class Railtie < Rails::Railtie

    config.before_configuration do
      path = Rails.root.join('config/confidential.yml')
      if File.exist?(path) && envs = YAML.load(File.read(path))
        envs.each do |key, value|
          ENV[key] = value
        end
      end
    end

  end
end
