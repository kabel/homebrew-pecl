require_relative "../lib/php_pecl_formula"

class PhpAT72Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.11.3.tgz"
  sha256 "363d302991ce2ef7b63f2e1e24ae75fd7e245d24ce567ac65e44d12bc1c224b5"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "d5c23a9f69d2cd618a35d63d1a35b043c3c223fad6044193d4318db05f4ea90c" => :catalina
    sha256 "d3b19740a5155574c677fd51a99a904caad60e2bb1bfbf41e97ba5cbb00df28f" => :mojave
  end
end
