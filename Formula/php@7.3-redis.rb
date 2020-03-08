require_relative "../lib/php_pecl_formula"

class PhpAT73Redis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.2.0.tgz"
  sha256 "4e9096b2bf2d1a67d9a828d07b0a22ba09eb54c1df8a2ba80dc6f04c0504f1bb"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "4bbce4207dc4c1947deeaa00624d4a82059d1c274398af995829a41609047f0b" => :mojave
    sha256 "21d3a4085e7cad6fd100eff9df3c90e036e324d8ab1ed5bee78abaf7793495f6" => :high_sierra
  end
end
