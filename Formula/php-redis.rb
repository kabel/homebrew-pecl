require_relative "../lib/php_pecl_formula"

class PhpRedis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.2.0.tgz"
  sha256 "4e9096b2bf2d1a67d9a828d07b0a22ba09eb54c1df8a2ba80dc6f04c0504f1bb"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "90744e94222739638c82951c2044b9270aa0d1393625c4df0646dc79903aa87a" => :mojave
    sha256 "dcca2914f18564346c249793370291f827d38dfd5bb80107a5dd6f0230ef881c" => :high_sierra
  end
end
