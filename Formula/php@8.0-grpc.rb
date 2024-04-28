require_relative "../lib/php_pecl_formula"

class PhpAT80Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.59.1.tgz"
  sha256 "d789aab7c791647907c3bc3af2bd6b6e97348d1b50eaa59826be61c4a3c3d3ee"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:   "6747b19713dbd9f5eac3faba5ce0e215ef7fbc8f49a1ced348a1b92404810c64"
    sha256 cellar: :any_skip_relocation, ventura:  "5ce037727752f5a5a3a584cf12f2c1076c97d25ef29e33e2202f30575459e122"
    sha256 cellar: :any_skip_relocation, monterey: "b11ae0a5331d86e2be1ef27625d3f1ff3d458c7ac8546f097012ce1f87d04e40"
  end

  deprecate! date: "2023-11-26", because: :unsupported
end
