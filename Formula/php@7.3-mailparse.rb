require_relative "../lib/php_pecl_formula"

class PhpAT73Mailparse < PhpPeclFormula
  extension_dsl "Email message manipulation"

  url "https://pecl.php.net/get/mailparse-3.1.0.tgz"
  sha256 "6d4fc66e7bf91b4d94f5339d9486dd26ffd1859acae73b09c0ef119fd2cb1c99"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "4c0747d714c97f3b3b8f4750a9738f8b2d9e553e3a9bbedc4d20082256d734c2" => :mojave
    sha256 "462505fedf9ad39f05934152b17ebb6ca1487ad9f6a60c5e7a9386e5f3642096" => :high_sierra
  end
end
