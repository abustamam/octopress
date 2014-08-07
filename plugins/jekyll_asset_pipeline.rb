require 'jekyll_asset_pipeline'

module JekyllAssetPipeline
  class CoffeeScriptConverter < JekyllAssetPipeline::Converter
    require 'coffee-script'

    def self.filetype
      '.coffee'
    end

    def convert
      return CoffeeScript.compile(@content)
    end
  end
end

module JekyllAssetPipeline
  class SassConverter < JekyllAssetPipeline::Converter
    require 'sass'

    def self.filetype
      '.scss'
    end

    def convert
      return Sass::Engine.new(@content, syntax: :scss, load_paths: ['../_assets']).render
    end
  end
end

module JekyllAssetPipeline
  class LessConverter < JekyllAssetPipeline::Converter
    require 'less'

    def self.filetype
      '.less'
    end

    def convert
      Dir.chdir "../_assets/stylesheets" do
        return Less::Parser.new(:paths => ['.', '_assets']).parse(@content).to_css
      end
    end
  end
end