require_relative "../lib/php_pecl_formula"

class PhpAT82Yaml < PhpPeclFormula
  extension_dsl "YAML 1.1 serialization"

  url "https://pecl.php.net/get/yaml-2.2.5.tgz"
  sha256 "0c751b489749fbf02071d5b0c6bfeb26c4b863c668ef89711ecf9507391bdf71"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "52575fb5aad3d6ede3c31741dec9c43e36f2207db18cd01c04599718894373ea"
    sha256 cellar: :any, ventura: "9ad380827a2c93cf9de97823a3d00fcea5665398d39bad8dca62b75a11f50038"
  end

  deprecate! date: "2026-12-31", because: :unsupported

  depends_on "libyaml"

  configure_arg "--with-yaml=#{Formula["libyaml"].opt_prefix}"
end
