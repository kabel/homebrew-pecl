require_relative "../lib/php_pecl_formula"

class PhpAT81Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.62.0.tgz"
  sha256 "ceabf3c564cd3d61ca7a9a06ebdde777322e50701a454f1c5d8a5291afe59302"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:   "d4734ac4eed72d32df058b23ec3366034550f65318093c97893a92163e93875b"
    sha256 cellar: :any_skip_relocation, ventura:  "fbfd68ab94b1de3726b4038bf55979b4a441755dd73e845766f882bb261b55ca"
    sha256 cellar: :any_skip_relocation, monterey: "289bcb1068cdcc7c677166d65c444d0cbf71c791764af3374db5a27826943216"
  end

  deprecate! date: "2024-11-25", because: :unsupported
end
