require_relative "../lib/php_pecl_formula"

class PhpAT81Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.68.0.tgz"
  sha256 "4e022e052d5b7997efd42f3b67f1175dbbb772cfd435570852febc0f569065bb"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:   "3b76e22db3441ed1bb12cf45e2956de1e09a2f7b4eb2b6f1900db58b060e372e"
    sha256 cellar: :any_skip_relocation, ventura:  "c4c4012d22df02c6d0f79561786eba355de945d412c46f7a8cca9183b52be746"
    sha256 cellar: :any_skip_relocation, monterey: "4d5d76068134b9deb8bf59d85ee4f733bc7d4738546faa97fb2c546fb6908fd7"
  end

  deprecate! date: "2025-12-31", because: :unsupported
end
