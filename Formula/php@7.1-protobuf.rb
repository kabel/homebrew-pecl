require_relative "../lib/php_pecl_formula"

class PhpAT71Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.9.2.tgz"
  sha256 "29c39b61afc433c3a53ad90f06d3a2d668808babe7f69af179f4cca92b24db4a"
  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "ebea0f8a346420302fe770b883b728ad7c4eff59f85883ebf666b771fdfafb40" => :mojave
    sha256 "9daaafd417bf91b811bdd0e184154e9f98ed274cfb0d23687d7f05ec64170b18" => :high_sierra
  end
end
