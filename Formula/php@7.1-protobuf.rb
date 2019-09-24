require_relative "../lib/php_pecl_formula"

class PhpAT71Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.9.2.tgz"
  sha256 "29c39b61afc433c3a53ad90f06d3a2d668808babe7f69af179f4cca92b24db4a"
  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "fe692689a23b9e320be2af6faa4c8eed512f90114652b880c2f54572e974f35e" => :mojave
    sha256 "fdf88f0922105b884ce935c737abb24f4e0261f79fdfa87482d36ee92996a49b" => :high_sierra
  end
end
