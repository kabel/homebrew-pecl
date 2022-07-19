require_relative "../lib/php_pecl_formula"

class PhpAT74Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.47.0.tgz"
  sha256 "76e82b0786962ca1514ef43a96102b53156a2f114261baa29ef3383ee659cd6b"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "e0c2075b05c3146cf2da5f25f698a7da69c3b739b6e34154a3734e5f418c1f26"
    sha256 cellar: :any_skip_relocation, big_sur:  "0db01aa2a587e011c66c8be8c09f9e792533ef0491dd1e48a45486037ded4a7c"
    sha256 cellar: :any_skip_relocation, catalina: "0464c04199c4f09131aacd78d2b5be5e5f32025d521a95345a8f80ceac222f8f"
  end
end
