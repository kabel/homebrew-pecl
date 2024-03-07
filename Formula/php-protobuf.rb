require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.25.3.tgz"
  sha256 "daf75724966e0e83856f90c3179a50f681eb3591f3af1fb57e104b8f3d2964e4"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:   "6427f8749723eb3fada2d5fc0af57fb0ed3ced7815f9320079bd006fc73a0f2a"
    sha256 cellar: :any_skip_relocation, ventura:  "3384e3a9e53a27c6c09f22f1230c1d84e62347d645599b8082acb7f43483b29d"
    sha256 cellar: :any_skip_relocation, monterey: "a7335a4b5034f8f929f10a28de4bbef5ee94603ba539ec1fe3e66c00b79a28e2"
  end
end
