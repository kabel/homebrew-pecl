require_relative "../lib/php_pecl_formula"

class PhpAT72Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.9.2.tgz"
  sha256 "29c39b61afc433c3a53ad90f06d3a2d668808babe7f69af179f4cca92b24db4a"
  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "45ca8433f719490d434e86d16af5c2561c3bcb2d0131f5270adce5dc3d575434" => :mojave
    sha256 "b3a3925d56bc92a8aee640763ce66cb89ed067b8451794bfc35f16f7b1224bf4" => :high_sierra
  end
end
