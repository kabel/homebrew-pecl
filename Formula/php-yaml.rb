require_relative "../lib/php_pecl_formula"

class PhpYaml < PhpPeclFormula
  extension_dsl "YAML 1.1 serialization"

  url "https://pecl.php.net/get/yaml-2.2.5.tgz"
  sha256 "0c751b489749fbf02071d5b0c6bfeb26c4b863c668ef89711ecf9507391bdf71"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "940080cb3182a832f9addcf8d7be35afacadfd98540d058e0896b959d845c834"
    sha256 cellar: :any, ventura: "bb437152654428f6b1da9275d493291e044b42636d97517c080eeed1aa48f42c"
  end

  depends_on "libyaml"

  configure_arg "--with-yaml=#{Formula["libyaml"].opt_prefix}"
end
