module HtmlAssets
  class Engine < ::Rails::Engine
    initializer 'html_assets.configure', :before => :engines_blank_point do |app|
      if app.config.respond_to?(:assets)
        app.config.assets.configure do |env|
          env.register_mime_type 'text/html', extensions: ['.html']
          env.register_transformer 'text/html', 'application/javascript', TiltHtml
        end
      end
    end
  end
end
