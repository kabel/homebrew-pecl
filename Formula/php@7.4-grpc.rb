require_relative "../lib/php_pecl_formula"

class PhpAT74Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.46.3.tgz"
  sha256 "2aad61230afda3192eedad25be918bda628e6aa18bf1ed7e3bcf1944e6e4f4d5"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "55a373f8ae96f470b2f3f6204632b8c7a023afef3b0657ee413caf10fb930934"
    sha256 cellar: :any_skip_relocation, big_sur:  "3af2b245d1ed010226199b80e6314251308ed40e4d665da5774ebc862c3e7fa3"
    sha256 cellar: :any_skip_relocation, catalina: "4977c729a73b47270b4989a5a0bf779b76d9f68fb60b417cb26e0055c77732de"
  end
end
