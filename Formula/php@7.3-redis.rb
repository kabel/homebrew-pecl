require_relative "../lib/php_pecl_formula"

class PhpAT73Redis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.1.1.tgz"
  sha256 "621c9d2b4054c797b0e5d5bc5e0f1eeb49bedb37f20e46f838aa4d17d2fe8180"
  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "4bbce4207dc4c1947deeaa00624d4a82059d1c274398af995829a41609047f0b" => :mojave
    sha256 "21d3a4085e7cad6fd100eff9df3c90e036e324d8ab1ed5bee78abaf7793495f6" => :high_sierra
  end

end
