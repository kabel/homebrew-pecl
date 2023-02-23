require_relative "../lib/php_pecl_formula"

class PhpAT80Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.22.0.tgz"
  sha256 "1cc1d1f08a3cd84f5747eba6aaa452e2975d968651fad15e77479498bc39c5d9"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "eb0499034f8708668960c13b2650d802f90be7e8cdb1fc1094a114c8d0037359"
    sha256 cellar: :any_skip_relocation, monterey: "10058ef1011e169bad235699d48861768145797b458b1512867635e2cdc9d81e"
    sha256 cellar: :any_skip_relocation, big_sur:  "97436e4a6b794f75a4dd568070f4d5267fa269154c5a13e45c7b6c552b8ce590"
  end

  deprecate! date: "2022-11-26", because: :versioned_formula
end
