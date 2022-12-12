require_relative "../lib/php_pecl_formula"

class PhpAT81Yaml < PhpPeclFormula
  extension_dsl "YAML 1.1 serialization"

  url "https://pecl.php.net/get/yaml-2.2.2.tgz"
  sha256 "119052f0461d57d86f44c252f9c9b2dd743486c701c1a0aba0aebecdd0d8b82a"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "c909bf085ab0be25b53d0eeab3109f9a8ef439600248a7a3dcb01b05ce1366b4"
    sha256 cellar: :any, monterey: "8db6a8b5bbd0195d22a76f82e9c84422052c155ef0b16f7a16a9b3d0e9e6d566"
    sha256 cellar: :any, big_sur:  "491eb52178fb258f943ddd8bdb0661e1523821ac4a3e45a06d63675e2525f7bd"
  end

  depends_on "libyaml"
end
