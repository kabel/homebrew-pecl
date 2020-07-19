require_relative "../lib/php_pecl_formula"

class PhpAT72Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.12.3.tgz"
  sha256 "056b815dea3067abf8fe3d7779b2357039129dd847f66b49b80c9ab05d7557a0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "3f3d35a84c62c33910209722b004b6f3062ced06de52f9e6ad9c963ee30e7273" => :catalina
    sha256 "3197dfa46fdc628328af20a45cdcdb0f974afcb26424fe01d97d1e9bb0c45dfb" => :mojave
  end
end
