require_relative "../lib/php_pecl_formula"

class PhpAT83Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.70.0.tgz"
  sha256 "11336d7bc4465148db506348006dd5559ce478eee4bf1b080bb31b89de6974b7"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "0cff3fea0df8efdd68922c6191c1ca8acc4f446eefa67c46ad62d75543c8ced0"
    sha256 cellar: :any_skip_relocation, ventura: "0ccbba2b50010938fed571cdbbddab31d24cbbf9bdc1d66a73ec04a981af94d2"
  end

  deprecate! date: "2027-12-31", because: :unsupported
end
