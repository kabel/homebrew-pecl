require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.11.3.tgz"
  sha256 "363d302991ce2ef7b63f2e1e24ae75fd7e245d24ce567ac65e44d12bc1c224b5"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "1c8cf588f4863315a2a533f6b8a9019ec965c8389c9f89513c36a1b60c9d4a3b" => :mojave
    sha256 "1805be797853428132de293b87b1f2a5e91093aa5bf30e878fb4bc932c207e3d" => :high_sierra
  end
end
