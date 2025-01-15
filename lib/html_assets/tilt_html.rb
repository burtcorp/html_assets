require 'tilt'

module HtmlAssets
  class TiltHtml < Tilt::Template

    def self.default_mime_type
      'application/javascript'
    end

    def self.call(input)
      template_path = TemplatePath.new(input[:name])
      template_namespace = HtmlAssets::Config.template_namespace

      <<-TEMPLATE
        (function() {
          this.#{template_namespace} || (this.#{template_namespace} = {});
          this.#{template_namespace}[#{template_path.name}] = function() { return "#{input[:data].gsub('"', '\"').split("\n").join("\\n\" + \"")}" };
          return this.#{template_namespace}[#{template_path.name}];
        }).call(this);
      TEMPLATE
    end

  protected

    def prepare; end

    class TemplatePath
      def initialize(template_path)
        self.template_path = template_path
      end

      def name
        name = template_name
        if name.include?('/')
          name = name.split('/').last
        end
        name.dump
      end

    private

      attr_accessor :template_path

      def relative_path
        template_path.gsub(/^#{HtmlAssets::Config.path_prefix}\/(.*)$/i, "\\1")
      end

      def template_name
        relative_path
      end
    end
  end
end
