require_relative "../lib/php_pecl_formula"

class PhpAT81Yaml < PhpPeclFormula
  extension_dsl "YAML 1.1 serialization"

  url "https://pecl.php.net/get/yaml-2.2.5.tgz"
  sha256 "0c751b489749fbf02071d5b0c6bfeb26c4b863c668ef89711ecf9507391bdf71"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "65e61e38368ef3507c243e88502b8aaa9b8116d71c0baa6194d3e3e4e2cf5849"
    sha256 cellar: :any, ventura: "ce7f26b69f2868b2f62cc31b08b3bb48d9bf8fc48129de947b721c06efbc11fc"
  end

  deprecate! date: "2025-12-31", because: :unsupported

  depends_on "libyaml"

  configure_arg "--with-yaml=#{Formula["libyaml"].opt_prefix}"
end
