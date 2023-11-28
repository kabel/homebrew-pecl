require_relative "../lib/php_pecl_formula"

class PhpAT81Yaml < PhpPeclFormula
  extension_dsl "YAML 1.1 serialization"

  url "https://pecl.php.net/get/yaml-2.2.3.tgz"
  sha256 "5937eb9722ddf6d64626799cfa024598ff2452ea157992e4e67331a253f90236"
  revision 1
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "e94341b7e3b2fbe7e3e77b5258546a19e3c46aa0457185c5a8781be51bd93c9f"
    sha256 cellar: :any, ventura:  "e669f09838072c2c0a4da2cc2dc1a54356c621fa7ba9e7bea0a9d7f500e70916"
    sha256 cellar: :any, monterey: "4bb71e3be30e4de6fe3f290c049a77dbe3f394e2ad60ab00bac0516d2f43f87e"
  end

  deprecate! date: "2024-11-25", because: :unsupported

  depends_on "libyaml"

  configure_arg "--with-yaml=#{Formula["libyaml"].opt_prefix}"
end
