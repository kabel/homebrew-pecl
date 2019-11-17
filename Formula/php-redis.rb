require_relative "../lib/php_pecl_formula"

class PhpRedis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.1.1.tgz"
  sha256 "621c9d2b4054c797b0e5d5bc5e0f1eeb49bedb37f20e46f838aa4d17d2fe8180"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "609bf661e84579b789a68d667df29319b03b57f254da67bc3250b5f9221e46dd" => :mojave
    sha256 "04bb1bc1cbd5b964fb450c2fd508232ebfd97ac5e8a2909ffa6f8c8c4822e062" => :high_sierra
  end
end
