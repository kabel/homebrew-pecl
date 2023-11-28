require_relative "../lib/php_pecl_formula"

class PhpAT82Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.59.1.tgz"
  sha256 "d789aab7c791647907c3bc3af2bd6b6e97348d1b50eaa59826be61c4a3c3d3ee"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:   "162742e7aae994081dbfb662c2c066a00bc0e85c8e57dbcaa2b53c6e224e27b4"
    sha256 cellar: :any_skip_relocation, ventura:  "02baf20b71bc65925eba5a677e86be72ba4ccd55341a7e701747ef54f8b56e02"
    sha256 cellar: :any_skip_relocation, monterey: "33d54254f51334b3ffdac9a6b563bc49593e4e262ffb7b5e4090df7bc5963657"
  end

  deprecate! date: "2025-12-08", because: :unsupported
end
