require_relative "../lib/php_pecl_formula"

class PhpAT81Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.60.0.tgz"
  sha256 "171f490b5426de76b479036c95d4c1ca44bb1a3fb42999e938d2c59fcbceed32"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:   "22c2e47a2e6d40ab8b44d8ad86d89ae2f07823bad8cb76c638dcf90b6023a74e"
    sha256 cellar: :any_skip_relocation, ventura:  "868f18252c5fcf04c4bf030e46ce14f164806b0cf12969b8d85d723dba19e824"
    sha256 cellar: :any_skip_relocation, monterey: "9ce88d66366a2590ed82b3afdba12a2f40898144f9d6fd62762c05e5dc21a136"
  end

  deprecate! date: "2024-11-25", because: :unsupported
end
