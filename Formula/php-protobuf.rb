require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.25.3.tgz"
  sha256 "daf75724966e0e83856f90c3179a50f681eb3591f3af1fb57e104b8f3d2964e4"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:   "5d929de484c0b706b1c06a27e5539830b689b221376c91dd168fb51ac5326784"
    sha256 cellar: :any_skip_relocation, ventura:  "858b1a89580ad4b70d765bf7d8545e42bac7b860ec294027e54d4adc3febb85c"
    sha256 cellar: :any_skip_relocation, monterey: "1392e850d8a9408bdfb60fa981f9c22f410a7eac38f79b5011eb6d015b6c65a9"
  end
end
