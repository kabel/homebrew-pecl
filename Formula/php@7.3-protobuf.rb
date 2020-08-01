require_relative "../lib/php_pecl_formula"

class PhpAT73Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.12.4.tgz"
  sha256 "b8826b730355fd0d30bdc9b698f7297a9db13f8d217361882b3db150bdf43681"
  license "BSD-3-Clause"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "165e1d5829a1a3e456db77e4f2ed0a2817244ecf2e7004ed8a19792896b31f04" => :catalina
    sha256 "860d3c43d662f7e53814363495a1bdb1515110f9c42b3e2e0516cc733b152248" => :mojave
  end
end
