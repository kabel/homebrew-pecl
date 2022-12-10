require_relative "../lib/php_pecl_formula"

class PhpYaml < PhpPeclFormula
  extension_dsl "YAML 1.1 serialization"

  url "https://pecl.php.net/get/yaml-2.2.2.tgz"
  sha256 "119052f0461d57d86f44c252f9c9b2dd743486c701c1a0aba0aebecdd0d8b82a"
  revision 3
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "28114c281fbc05399ef06d23edbf282b00c0279fff15f4763efc5804306372d3"
    sha256 cellar: :any, monterey: "66313d90014bbb65384867131f88f4669fef7d95697ff72b5c1be13f708cce09"
    sha256 cellar: :any, big_sur:  "3189b6f0500278bda92d0a12bc8307e1bdc95283d469a7925a2213b69b4976c4"
  end

  depends_on "libyaml"
end
