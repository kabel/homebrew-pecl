require_relative "../lib/php_pecl_formula"

class PhpAT73Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.26.0.tgz"
  sha256 "519bc3312937b7f203bc0228099f10056a59aadd5cc09e5d9160aa96c89f3098"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "7c7328c0fec7d7c4031030f252d87481bb029780e12e6b6d73a52ad7e70e8915" => :mojave
    sha256 "9162456f34faefba3c51d9b1148d4ffca74aed2e9ea3469ee3a875501df6abfb" => :high_sierra
  end
end
