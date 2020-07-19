require_relative "../lib/php_pecl_formula"

class PhpAT73Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.12.3.tgz"
  sha256 "056b815dea3067abf8fe3d7779b2357039129dd847f66b49b80c9ab05d7557a0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "165e1d5829a1a3e456db77e4f2ed0a2817244ecf2e7004ed8a19792896b31f04" => :catalina
    sha256 "860d3c43d662f7e53814363495a1bdb1515110f9c42b3e2e0516cc733b152248" => :mojave
  end
end
