require_relative "../lib/php_pecl_formula"

class PhpAT80Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.23.3.tgz"
  sha256 "72575793a9a4e3c8cb52519fdab154c9a9434e34e2027b8761bb0cbcbe0345f1"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "b4bc0cee72d49635b5521210daa96fbe5da8e3490de8eda0869ad5b4c38170f5"
    sha256 cellar: :any_skip_relocation, monterey: "be368d5d666bf4b18e6b7e458e1ad007e7f02f47a69f2a498f2f03019df0937f"
    sha256 cellar: :any_skip_relocation, big_sur:  "eb5abede1d8e01bed88f1ed6f62aebd919445ff28dea5c015949ae1fd5a25e35"
  end

  deprecate! date: "2022-11-26", because: :versioned_formula
end
