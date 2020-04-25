require_relative "../lib/php_pecl_formula"

class PhpAT72Mailparse < PhpPeclFormula
  extension_dsl "Email message manipulation"

  url "https://pecl.php.net/get/mailparse-3.1.0.tgz"
  sha256 "6d4fc66e7bf91b4d94f5339d9486dd26ffd1859acae73b09c0ef119fd2cb1c99"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "546a0f426df828ea5968b03069837fd9d7b857f175ea5d8c62506522dbb0aac7" => :catalina
    sha256 "0a35192a37883cd8481de62822b1885ccb2b87f36013585d25fe96fafe1bf856" => :mojave
  end
end
