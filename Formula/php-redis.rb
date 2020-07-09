require_relative "../lib/php_pecl_formula"

class PhpRedis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.3.1.tgz"
  sha256 "7c29e49c5cbc6b54ccccc00b44fac4d3ed9895e5718fcf62a5b06281dda8809d"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "ce5fbf18b50de2cfb4e271befb717e2550328296d3c5f7ff5fb163839bf13a86" => :catalina
    sha256 "43b4d79d817ef71efde47bffda3915f3552c55f546ebcd3dc28310dc2f2871f5" => :mojave
  end
end
