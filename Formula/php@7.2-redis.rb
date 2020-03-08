require_relative "../lib/php_pecl_formula"

class PhpAT72Redis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.2.0.tgz"
  sha256 "4e9096b2bf2d1a67d9a828d07b0a22ba09eb54c1df8a2ba80dc6f04c0504f1bb"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "9142bf285d707f37a6a8c19fce8d7a37f352e8494be11a68949c7a6e9c76a7ad" => :catalina
    sha256 "c8fd5d4acaa42c0b97a01cc9d59aa171028ed506107416b1855c28688ffb0b73" => :mojave
  end
end
