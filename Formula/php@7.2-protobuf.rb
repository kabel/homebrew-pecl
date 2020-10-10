require_relative "../lib/php_pecl_formula"

class PhpAT72Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.13.0.1.tgz"
  sha256 "0e7f0830f95d856fad8eb1e770ea7c81386f4d676615c5d97f7d3ca474e4fd6f"
  license "BSD-3-Clause"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "a574e57c55815b51fad7773e4e0fab2bbe3813183007bb2975a0d117a8fb38e5" => :catalina
    sha256 "a39453cd70268f891a4c1593c9be51f636a2e7c4d494605425267808eaa3d62c" => :mojave
  end
end
