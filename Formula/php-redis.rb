require_relative "../lib/php_pecl_formula"

class PhpRedis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.1.0.tgz"
  sha256 "4b4dca9d2d7f316486f55402f5a29bd976420f728ed731589c8bada973ec89e7"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "ac23907cf3b1a34f2f83e8c5fbec69d10d717edddc81707906e8bc4cdc9d246b" => :mojave
    sha256 "b52378f46acc9af605c53ee845b4eddc91c3f50eb1a8d7689b68492c1ab6ac21" => :high_sierra
  end
end
