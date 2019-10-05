require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.10.0.tgz"
  sha256 "15ae87fa87775c2a729842554c87973e16c9726905f62a407c547ab6c44434a8"
  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "62e821437d5a471c4dbf8bed5683d917a6feebf8b2764797f0aac300caf7ce89" => :mojave
    sha256 "525c5d27c5bd6052f54a35cdd254ec38a9350109716fa2327d943b851fd40949" => :high_sierra
  end
end
