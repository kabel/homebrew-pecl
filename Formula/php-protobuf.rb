require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.11.3.tgz"
  sha256 "363d302991ce2ef7b63f2e1e24ae75fd7e245d24ce567ac65e44d12bc1c224b5"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "a77b9a0a10fc85853d055de104d7f0aa6f1baae69cd9de650a26855c1a0db22c" => :catalina
    sha256 "73058880789d3901d381129ea0549220b8a0be94e8090bdc2bab06ac1084f7ec" => :mojave
  end
end
