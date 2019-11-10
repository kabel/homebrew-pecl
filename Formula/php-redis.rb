require_relative "../lib/php_pecl_formula"

class PhpRedis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.1.0.tgz"
  sha256 "4b4dca9d2d7f316486f55402f5a29bd976420f728ed731589c8bada973ec89e7"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "12fb8d73ec65d434e5ec13a7731ff50b25c4f43707f5c51d7a638f2c5dc8f8d8" => :mojave
    sha256 "7f0e70ed7c5584c5b3f6df52d315d9c0d259afca1f3c4c1443f24a68655cb499" => :high_sierra
  end
end
