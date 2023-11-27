require_relative "../lib/php_pecl_formula"

class PhpAT81Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.23.3.tgz"
  sha256 "72575793a9a4e3c8cb52519fdab154c9a9434e34e2027b8761bb0cbcbe0345f1"
  license "BSD-3-Clause"

  deprecate! date: "2024-11-25", because: :unsupported

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "79a879c059c34ece57d6535b1be2a76f1153eb664d0bb98ec33ab76a3cb7b640"
    sha256 cellar: :any_skip_relocation, monterey: "81ed06f6d6d7dee0c42afec9e1a97ff75e05e59f6293ff26f15b3f98063b9e77"
    sha256 cellar: :any_skip_relocation, big_sur:  "ab9ef93f378a4e3b656506bcf6e0df4fd7382f29dd3f2e96c7eebf7bfaa90ce6"
  end
end
