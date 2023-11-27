require_relative "../lib/php_pecl_formula"

class PhpYaml < PhpPeclFormula
  extension_dsl "YAML 1.1 serialization"

  url "https://pecl.php.net/get/yaml-2.2.3.tgz"
  sha256 "5937eb9722ddf6d64626799cfa024598ff2452ea157992e4e67331a253f90236"
  revision 1
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "c9b944fcd0b91213c2a724154cf15b9eb0470bb195fa3b6646a0708a29e3d8b0"
    sha256 cellar: :any, monterey: "bcc6ba61e53a3bd07ca09532d46ab7b21ad06db48356a82e7c6decf2b13257d5"
    sha256 cellar: :any, big_sur:  "18157c1640990b336f3b88edeaf8f64403eca1cb8dc6cb75e41fdb927aa5af53"
  end

  depends_on "libyaml"
end
