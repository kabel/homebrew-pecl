require_relative "../lib/php_pecl_formula"

class PhpAT73Yaml < PhpPeclFormula
  extension_dsl "YAML 1.1 serialization"

  url "https://pecl.php.net/get/yaml-2.2.2.tgz"
  sha256 "119052f0461d57d86f44c252f9c9b2dd743486c701c1a0aba0aebecdd0d8b82a"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, big_sur:  "49ee0829111ab2234d0556b1db15b00a5ace4975e4a804a56544aa4235266618"
    sha256 cellar: :any, catalina: "6591200fa033257e2e93e02ff8f26c329c9502270285cd566ba44146cc97825d"
  end

  disable! date: "2021-12-06", because: :versioned_formula

  depends_on "libyaml"
end
