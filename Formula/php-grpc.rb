require_relative "../lib/php_pecl_formula"

class PhpGrpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.51.1.tgz"
  sha256 "a8a79bf27bceeb8088c2a3a5a76c1146bbbd3e8d7a8a13e44ddbcfd715213ba9"
  revision 1
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "d082bab08d61779849bbf831e2dcdf877e29e7eb8dc0ffaa2ced7200a8680fbb"
    sha256 cellar: :any_skip_relocation, monterey: "a1df3870dce5b0c9ef0dcc50c087bdffaadf1bccb73fd94123443b26a822c9bc"
    sha256 cellar: :any_skip_relocation, big_sur:  "9d03aa899026df250fb7211bac504c2659d13938759e0881b9ef6428b73d02f0"
  end
end
