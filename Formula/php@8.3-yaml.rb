require_relative "../lib/php_pecl_formula"

class PhpAT83Yaml < PhpPeclFormula
  extension_dsl "YAML 1.1 serialization"

  url "https://pecl.php.net/get/yaml-2.2.5.tgz"
  sha256 "0c751b489749fbf02071d5b0c6bfeb26c4b863c668ef89711ecf9507391bdf71"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "7a326ebf1adb98e0b7e19f7f06b66b579b62f0f69fdf48a3179c13e6ed39328e"
    sha256 cellar: :any, ventura: "febafd53d9a16d095b5f6b569987927ab29e480bfe2f7fe9547a2d3821e690b2"
  end

  deprecate! date: "2027-12-31", because: :unsupported

  depends_on "libyaml"

  configure_arg "--with-yaml=#{Formula["libyaml"].opt_prefix}"
end
