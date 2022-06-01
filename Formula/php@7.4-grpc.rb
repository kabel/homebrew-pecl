require_relative "../lib/php_pecl_formula"

class PhpAT74Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.46.3.tgz"
  sha256 "2aad61230afda3192eedad25be918bda628e6aa18bf1ed7e3bcf1944e6e4f4d5"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "77f2cd49a1530faf155efcda22b48cee00f2f65afc89f287acd2a1a07dbe96b6"
    sha256 cellar: :any_skip_relocation, big_sur:  "fb06fdb084e5c67444d6f75cf55d76b84df48b65d518534aa3667e8c7953e93a"
    sha256 cellar: :any_skip_relocation, catalina: "f30a750825f6f8f7d06fff7cef8858cd3de44d7341e3ebdc8555dc58a91c8f3c"
  end
end
