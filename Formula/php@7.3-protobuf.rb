require_relative "../lib/php_pecl_formula"

class PhpAT73Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.11.2.tgz"
  sha256 "1f269a4e04777c978e9d4893d5a0c9edd1bcbd3ceb039224e61e95e9dbf40d2e"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "680135d5865cf1e73b1099255e19327583a8d81fcfc09f4933487479908620c3" => :mojave
    sha256 "69ddea70b8f0f350aa4c10bfff598c5d21071933d91cdd564d422ce76c665faf" => :high_sierra
  end
end
