require_relative "../lib/php_pecl_formula"

class PhpAT74Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.45.0.tgz"
  sha256 "48f9c408167cd2c5df5d889526319f3ac4b16410599dab0ef693eef50e649488"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "3af2b245d1ed010226199b80e6314251308ed40e4d665da5774ebc862c3e7fa3"
    sha256 cellar: :any_skip_relocation, catalina: "4977c729a73b47270b4989a5a0bf779b76d9f68fb60b417cb26e0055c77732de"
  end
end
