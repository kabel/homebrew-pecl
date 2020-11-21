require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.14.0.tgz"
  sha256 "6d4576f2ec472f6b1b5048b833e679164816df3580118a9e63c160888426acd1"
  license "BSD-3-Clause"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "65d241ddc7297c4274e8cbf67e97930d2964fc7dcdf39f7686a21d908ad6ac36" => :catalina
    sha256 "65fb303191e006100e40f782e8fba9fae1ada247b7b9cbfea538308047e0ddaa" => :mojave
  end
end
