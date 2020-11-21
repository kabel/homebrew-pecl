require_relative "../lib/php_pecl_formula"

class PhpAT73Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.14.0.tgz"
  sha256 "6d4576f2ec472f6b1b5048b833e679164816df3580118a9e63c160888426acd1"
  license "BSD-3-Clause"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "436edb5b13574e41e243d86db89e8358c0b713af1bca0d8d5b87e5a9c70b6bda" => :catalina
    sha256 "293fa5e4d592c0a18ca1c378b415381cf3a8cce5af235ba1ff8d187b52b282e8" => :mojave
  end
end
