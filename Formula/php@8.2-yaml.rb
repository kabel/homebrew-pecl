require_relative "../lib/php_pecl_formula"

class PhpAT82Yaml < PhpPeclFormula
  extension_dsl "YAML 1.1 serialization"

  url "https://pecl.php.net/get/yaml-2.2.5.tgz"
  sha256 "0c751b489749fbf02071d5b0c6bfeb26c4b863c668ef89711ecf9507391bdf71"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "a077e9b37d9e797d2d843e1387af980d5996b8afa062f6063e8a9c3d4c5605fc"
    sha256 cellar: :any, ventura: "ad88fef3e04eda3345670c1b6ddc453fd145adebdc49ac37929dc15c7ca9cb50"
  end

  deprecate! date: "2026-12-31", because: :unsupported

  depends_on "libyaml"

  configure_arg "--with-yaml=#{Formula["libyaml"].opt_prefix}"
end
