require_relative "../lib/php_pecl_formula"

class PhpAT72Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.10.0.tgz"
  sha256 "15ae87fa87775c2a729842554c87973e16c9726905f62a407c547ab6c44434a8"
  revision 1

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "fa56896fe651393fdc0c894f124dd7819fc1525698f07f5a2465da05657d05e0" => :mojave
    sha256 "91be1ef9740835bb01830a5dd8845285ff0a9577dbc2feaa10be44ecdd6d88ce" => :high_sierra
  end
end
