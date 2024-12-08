require_relative "../lib/php_pecl_formula"

class PhpAT83Yaml < PhpPeclFormula
  extension_dsl "YAML 1.1 serialization"

  url "https://pecl.php.net/get/yaml-2.2.4.tgz"
  sha256 "8eb353baf87f15b1b62ac6eb71c8b589685958a1fe8b0e3d22ac59560d0e8913"
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
