require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.13.0.1.tgz"
  sha256 "0e7f0830f95d856fad8eb1e770ea7c81386f4d676615c5d97f7d3ca474e4fd6f"
  license "BSD-3-Clause"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "65d241ddc7297c4274e8cbf67e97930d2964fc7dcdf39f7686a21d908ad6ac36" => :catalina
    sha256 "65fb303191e006100e40f782e8fba9fae1ada247b7b9cbfea538308047e0ddaa" => :mojave
  end
end
