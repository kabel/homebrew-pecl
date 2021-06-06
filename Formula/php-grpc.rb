require_relative "../lib/php_pecl_formula"

class PhpGrpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.38.0.tgz"
  sha256 "4bec8f981b7b074ed78bc42ef229dcfb6c5fe3782f29bc4980b4da00866d47f9"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "d91b8a7abd28c1a0be62d3c4a8a3faf03e333299951721c47d79decf2c54b169"
    sha256 cellar: :any_skip_relocation, catalina: "a1cdbdf84a6421ebcddf05d7a96d4777c4bced052f23eba2d236540b78e50802"
    sha256 cellar: :any_skip_relocation, mojave:   "e0bff08abbd3657813d9067f8223b07c21a9ebe1a22f8e1fb3cd05a10c6d90a0"
  end
end
