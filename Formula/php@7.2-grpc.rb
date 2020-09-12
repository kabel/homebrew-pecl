require_relative "../lib/php_pecl_formula"

class PhpAT72Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.32.0.tgz"
  sha256 "9d6297e0b624584c4d43cad492325cf96095f70529ed21b618aab5142ec21c39"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "c1fcfe7c9a824198a530a16da21203d10016bb580bf02bbbdb89d706c32aee58" => :catalina
    sha256 "4cbb8a9292ad0bf50cab31cb53cc133854b2218d23b41c93d1a41015cc483dc9" => :mojave
  end
end
