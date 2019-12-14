require_relative "../lib/php_pecl_formula"

class PhpAT72Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.11.2.tgz"
  sha256 "1f269a4e04777c978e9d4893d5a0c9edd1bcbd3ceb039224e61e95e9dbf40d2e"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "9b470d4716eeb15874c7e61b523895ac324511d3a65541f0ca6d720233e969da" => :mojave
    sha256 "a2a00b99870decd12a4b77733bd5a9847a1ad31ef7e3ecd0ccd184be0827742d" => :high_sierra
  end
end
