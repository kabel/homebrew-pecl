require_relative "../lib/php_pecl_formula"

class PhpAT72Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.26.0.tgz"
  sha256 "519bc3312937b7f203bc0228099f10056a59aadd5cc09e5d9160aa96c89f3098"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "ae9ad60f87c2bab5bbe526724d4f8ea41b18fe8ceb1f3bf7d821b27d7ee881cd" => :mojave
    sha256 "8ad831cf3c299d1cd92d46e4f84d15369945e7868fe298f7100fa7492105955b" => :high_sierra
  end
end
