require_relative "../lib/php_pecl_formula"

class PhpGrpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.45.0.tgz"
  sha256 "48f9c408167cd2c5df5d889526319f3ac4b16410599dab0ef693eef50e649488"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "404ad6fb03c0cf5a56f87a7a968a4e94d4751a80cc71adf6ddb3793a436402fc"
    sha256 cellar: :any_skip_relocation, big_sur:  "fba8552db720063a8d631918880dddffe3d1123a2076a7547afa438891f42cf7"
    sha256 cellar: :any_skip_relocation, catalina: "4d9c1edb871b7627172656b640ecf707ae69b7918d6b8609bc27888b4cf72d81"
  end
end
