require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.10.0.tgz"
  sha256 "15ae87fa87775c2a729842554c87973e16c9726905f62a407c547ab6c44434a8"
  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "1a0eeca73647bcb4c2f2a78fa894dfecfb4c7a2dd8be065a5467640f3a44391c" => :mojave
    sha256 "b9cc7d356cb808836f35d8408de604e7aa62240fe32bbb21b121433030c7bff8" => :high_sierra
  end
end
