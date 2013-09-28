module HtmlAssets
  # Change config options in an initializer:
  #
  # HtmlAssets::Config.path_prefix = 'app/templates'
  module Config
    extend self

    attr_writer :path_prefix, :template_namespace

    def path_prefix
      @path_prefix || 'templates'
    end

    def template_namespace
      @template_namespace || 'Templates'
    end
  end
end
