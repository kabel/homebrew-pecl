require_relative "../lib/php_pecl_formula"

class PhpAT80Ds < PhpPeclFormula
  extension_dsl "Data Structures for PHP"

  url "https://pecl.php.net/get/ds-1.3.0.tgz"
  sha256 "0114b146e1036d75a83cd438200df73db030b5d12b8c687843809d1d0cec91be"
  license "MIT"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, catalina: "bcdfe7de44e39ad9a76a308135d0e830f8ec488786f9a21761ac75139b0f51c9"
    sha256 cellar: :any_skip_relocation, mojave:   "fcf0f18957c7e48c3817555d5bfc20c6e1aef589e72308ddfee60f94d106db08"
  end
end
