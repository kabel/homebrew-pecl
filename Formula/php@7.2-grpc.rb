require_relative "../lib/php_pecl_formula"

class PhpAT72Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.32.0.tgz"
  sha256 "9d6297e0b624584c4d43cad492325cf96095f70529ed21b618aab5142ec21c39"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "eccaed07ff6494a0eade7bcc09300e712e743fc1f4838de55a28664c415dc231" => :catalina
    sha256 "2e7d110dadd78fb3b18ba8151c3837410ba79b37c5a08494f9e80275b90e3808" => :mojave
  end
end
