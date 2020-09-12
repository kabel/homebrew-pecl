require_relative "../lib/php_pecl_formula"

class PhpAT73Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.32.0.tgz"
  sha256 "9d6297e0b624584c4d43cad492325cf96095f70529ed21b618aab5142ec21c39"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "0edafb649746cc5ed74007e0893ead51c0ab8998c586073b674670a04735f0e0" => :catalina
    sha256 "b2683095d7292df7295e761528f12e4699c5355d155cda7afd9a96ac4de36765" => :mojave
  end
end
