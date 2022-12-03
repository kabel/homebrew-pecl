require_relative "../lib/php_pecl_formula"

class PhpAT74Yaml < PhpPeclFormula
  extension_dsl "YAML 1.1 serialization"

  url "https://pecl.php.net/get/yaml-2.2.2.tgz"
  sha256 "119052f0461d57d86f44c252f9c9b2dd743486c701c1a0aba0aebecdd0d8b82a"
  revision 1
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "46f431647c35df689acfcada091c42b122b75b69f2147d4d0b58acb58076a713"
    sha256 cellar: :any, monterey: "361e80f68457add4a9ae2481c8cb9a088de714de99c1ba16b4d00c0059d2678f"
    sha256 cellar: :any, big_sur:  "ec87dd356cc48d319517f075ada16794a7ab102f30847662bb0ab5587be7bd72"
  end

  depends_on "libyaml"
end
