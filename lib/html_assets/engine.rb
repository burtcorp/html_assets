module HtmlAssets
  class Engine < ::Rails::Engine
    initializer 'sprockets.html', :after => 'sprockets.environment', :group => :all do |app|
      next unless app.assets
      app.assets.register_engine('.html', TiltHtml)
    end
  end
end
