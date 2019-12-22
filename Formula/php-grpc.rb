require_relative "../lib/php_pecl_formula"

class PhpGrpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.26.0.tgz"
  sha256 "519bc3312937b7f203bc0228099f10056a59aadd5cc09e5d9160aa96c89f3098"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "96efd6fd7251297f34d2b27d763848f4535da5f842c554895a9b3af1ad9147c7" => :mojave
    sha256 "391d91f842ebcd63a8bb711ce55f7ca6c47389c26e33a528ef01f24744faa276" => :high_sierra
  end
end
