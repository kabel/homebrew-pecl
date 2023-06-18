require_relative "../lib/php_pecl_formula"

class PhpAT81Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.56.0.tgz"
  sha256 "bb3c58314cc4c4c043b70bf7162a4ebae507834bf5c2a014b67ebd8d70109dfe"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "612f959350b08da98427e463b769c0382491747bc2dc986ef1a9de79c0f081e3"
    sha256 cellar: :any_skip_relocation, monterey: "57e5f1cf0eacc916384ba95f12fa5b350e9344ae09382a28bc13acbb28e82063"
    sha256 cellar: :any_skip_relocation, big_sur:  "4735185455ff40b8f18694386a33b624ce92a84c58dfc2acbfc47f2d84fad92d"
  end
end
