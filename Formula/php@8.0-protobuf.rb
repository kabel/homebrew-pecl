require_relative "../lib/php_pecl_formula"

class PhpAT80Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.21.10.tgz"
  sha256 "49fe674116eb5ad61033a0cee4beafd5a0abe50cb0188c9f4ae35932c85e8728"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "17d35ff7bd1369a2f1bf6782cac065e78d67e9deff7796d800a2c9701023adf4"
    sha256 cellar: :any_skip_relocation, monterey: "b59beacff20db79149d7b58f0820c4c90535c6dd78608ca2a18dfa76894f9e17"
    sha256 cellar: :any_skip_relocation, big_sur:  "661b7565cdce8f95c8b211d2ae73ecbe75d3e5b4d24f8cd765641eb2f7bee23b"
  end

  deprecate! date: "2022-11-26", because: :versioned_formula
end
