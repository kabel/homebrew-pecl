require_relative "../lib/php_pecl_formula"

class PhpAT74Jsmin < PhpPeclFormula
  extension_dsl "Extension for JavaScript minification"

  url "https://pecl.php.net/get/jsmin-3.0.0.tgz"
  sha256 "f936ccd01df91eb73236ecfdacfd1e2d3de92e7e776ad5d0f3c6f65d17948783"
  license "PHP-3.01"
  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "0f24372f0d3edc83e6f27c7d0efef8d9690059d5b2ab9e25d90d0b0b1aa1b5c2" => :catalina
    sha256 "1ea23e9acf1547ef2b499f82a4cd82cc92a7e4d30e512e822f44c91de19fcc93" => :mojave
  end
end
