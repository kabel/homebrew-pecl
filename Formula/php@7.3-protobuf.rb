require_relative "../lib/php_pecl_formula"

class PhpAT73Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.11.3.tgz"
  sha256 "363d302991ce2ef7b63f2e1e24ae75fd7e245d24ce567ac65e44d12bc1c224b5"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "e7de426fbf9fe9e5c78bfb24694b1eb79727b777135522f8a8ee70acad26a650" => :catalina
    sha256 "ea52a2e1b5085fb8e491be8acf15090ba37d9e8e2c46e5c5c5f7f582311b32ad" => :mojave
  end
end
