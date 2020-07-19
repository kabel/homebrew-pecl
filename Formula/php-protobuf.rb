require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.12.3.tgz"
  sha256 "056b815dea3067abf8fe3d7779b2357039129dd847f66b49b80c9ab05d7557a0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "358e29f1200a9728cbf44eecebdc0353ab6eb5a29eb0a72abe209897bf85af9b" => :catalina
    sha256 "2fb10ec58be6ffe1afc6d7494162564c798bc091278216927c39eb60cd12f56a" => :mojave
  end
end
