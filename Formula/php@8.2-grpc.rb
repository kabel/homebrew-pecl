require_relative "../lib/php_pecl_formula"

class PhpAT82Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.60.0.tgz"
  sha256 "171f490b5426de76b479036c95d4c1ca44bb1a3fb42999e938d2c59fcbceed32"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:   "7ac96d7193efd773970b31fa4d1139926621945083d2b250b85df370316a5f6d"
    sha256 cellar: :any_skip_relocation, ventura:  "14d9196306ebd7a0be704b78ac76cd944d03524cf57ffa859d02dad9e9a6f197"
    sha256 cellar: :any_skip_relocation, monterey: "a80cf7d43e5f56da3a88ae43b80db2e384785022473d3116b01f827745b831ca"
  end

  deprecate! date: "2025-12-08", because: :unsupported
end
