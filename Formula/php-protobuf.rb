require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.12.2.tgz"
  sha256 "1f4c4927007bebee3622ee0f05a71e7087e0c0f638ec9f3839ba2454fb4d11cb"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "358e29f1200a9728cbf44eecebdc0353ab6eb5a29eb0a72abe209897bf85af9b" => :catalina
    sha256 "2fb10ec58be6ffe1afc6d7494162564c798bc091278216927c39eb60cd12f56a" => :mojave
  end
end
