require_relative "../lib/php_pecl_formula"

class PhpGrpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.40.0.tgz"
  sha256 "ebfb1a2e9e8378ab65efb48b2e7d8ff23f5c5514b29f63d9558556ae6436ebf1"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "2253d36dd796289b99065a46e9301e1d6f8432377feeed9af2491f8d828e996b"
    sha256 cellar: :any_skip_relocation, catalina: "b86de9622b4313dd14709988d73b8a7285cea71ea892fa17b8796144c80cc3ca"
    sha256 cellar: :any_skip_relocation, mojave:   "b3369f0836c6224c82d712786223168dd37612534fd72e0cf06c8727a62199e1"
  end
end
