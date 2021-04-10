require_relative "../lib/php_pecl_formula"

class PhpAT74Jsmin < PhpPeclFormula
  extension_dsl "Extension for JavaScript minification"

  url "https://pecl.php.net/get/jsmin-3.0.0.tgz"
  sha256 "f936ccd01df91eb73236ecfdacfd1e2d3de92e7e776ad5d0f3c6f65d17948783"
  license "PHP-3.01"
  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, catalina: "e7ea1b6e9b04513cb58ba113badb1805d8cb7c4ee01a5a62efc894878d7923fa"
    sha256 cellar: :any_skip_relocation, mojave:   "d96bd4ba5446d12747897c8e894f6415a27edea77e82db937393f3d9949f184e"
  end
end
