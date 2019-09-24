require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.9.2.tgz"
  sha256 "29c39b61afc433c3a53ad90f06d3a2d668808babe7f69af179f4cca92b24db4a"
  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "af64045ec7dd8f084765ac20215b296f73cb1be9f799ec666af8b02b42956209" => :mojave
    sha256 "923fd2771444ddd0e41e35b223eef5b6106fdbec9d6e6c8ca1322872276a4d80" => :high_sierra
  end
end
