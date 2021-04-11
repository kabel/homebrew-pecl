require_relative "../lib/php_pecl_formula"

class PhpGrpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.37.0.tgz"
  sha256 "591317e428276a05ca578dce778d4ade47d777a1efa9509db4dd480f82a5e822"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "263ca383ce9c3b70c4bf984016a82f17d680e2516ccac1f5f9e3c7cb8e3f0cab"
    sha256 cellar: :any_skip_relocation, catalina: "77d3b12550d19eb5974ee7aeb40d31759baf9feb3067473414711c2d9897af6f"
    sha256 cellar: :any_skip_relocation, mojave:   "3e0bff5c7a7d241d2a12dfa626077483c79924fe106dcadfb1cceab1074de514"
  end
end
