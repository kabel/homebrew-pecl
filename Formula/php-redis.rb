require_relative "../lib/php_pecl_formula"

class PhpRedis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.2.1.tgz"
  sha256 "c05af6254d704844303fbe8b13b2d54bdb4372b1a081934e67cac42ec79ecbbe"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "a6411df1181c92ff9f956dfa0f05e4f1bbd408edafa5805c06a66bcbd2c9821a" => :catalina
    sha256 "7b0426f8f26c8fb5bc99640f653aed2f6879e13015499ea03ace3247333e16f0" => :mojave
  end
end
