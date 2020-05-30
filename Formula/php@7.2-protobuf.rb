require_relative "../lib/php_pecl_formula"

class PhpAT72Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.12.2.tgz"
  sha256 "1f4c4927007bebee3622ee0f05a71e7087e0c0f638ec9f3839ba2454fb4d11cb"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "3f3d35a84c62c33910209722b004b6f3062ced06de52f9e6ad9c963ee30e7273" => :catalina
    sha256 "3197dfa46fdc628328af20a45cdcdb0f974afcb26424fe01d97d1e9bb0c45dfb" => :mojave
  end
end
