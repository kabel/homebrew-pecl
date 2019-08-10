require_relative "../lib/php_pecl_formula"

class PhpMailparse < PhpPeclFormula
  extension_dsl "Email message manipulation"

  url "https://pecl.php.net/get/mailparse-3.0.3.tgz"
  sha256 "bfaeae61342c147bcb66b9a90949722e04b65548e6a9d1eb4896aeb62409d302"
  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "164cd4eadf4c36d07d56a8131f7fb66db644e1482a4b116482693c0a13e0eab8" => :mojave
    sha256 "181c2c933a7d89bd1d808a25e8d75df44f5d739977674c972407b938ae09f2fd" => :high_sierra
  end

end
