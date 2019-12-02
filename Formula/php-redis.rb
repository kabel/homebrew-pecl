require_relative "../lib/php_pecl_formula"

class PhpRedis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.1.1.tgz"
  sha256 "621c9d2b4054c797b0e5d5bc5e0f1eeb49bedb37f20e46f838aa4d17d2fe8180"
  revision 1

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "90744e94222739638c82951c2044b9270aa0d1393625c4df0646dc79903aa87a" => :mojave
    sha256 "dcca2914f18564346c249793370291f827d38dfd5bb80107a5dd6f0230ef881c" => :high_sierra
  end
end
