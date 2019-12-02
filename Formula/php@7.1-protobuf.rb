require_relative "../lib/php_pecl_formula"

class PhpAT71Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.10.0.tgz"
  sha256 "15ae87fa87775c2a729842554c87973e16c9726905f62a407c547ab6c44434a8"
  revision 1

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "f6d5a1c13f7d28a9e1b97ef128ade8f82d64554be17e2a77b29054319f12ebce" => :mojave
    sha256 "7b676748934c4d4d3a8a6b56936b4be77a49e020be83928a916f1791f281ad25" => :high_sierra
  end
end
