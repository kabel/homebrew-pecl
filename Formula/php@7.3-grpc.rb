require_relative "../lib/php_pecl_formula"

class PhpAT73Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.36.0.tgz"
  sha256 "819becd24872b95c52ad1f022ca71f6f5eed207605b19a26e479b1d5a62c8561"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "b4c8c09e30520185317139342e722b70e13ee31b5fb165d418da108353ba4ac8" => :catalina
    sha256 "c37c6963b8b49e99676cf597afb0d4b13c5c105cddb75e1187559777b38f4b61" => :mojave
  end
end
