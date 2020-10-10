require_relative "../lib/php_pecl_formula"

class PhpAT72Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.13.0.1.tgz"
  sha256 "0e7f0830f95d856fad8eb1e770ea7c81386f4d676615c5d97f7d3ca474e4fd6f"
  license "BSD-3-Clause"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "5d2fc80efb249208afe9ac82e3e58ff12ca8360e52f5c2c3d32d3093b00575c6" => :catalina
    sha256 "3e7a1a8b0a27468ccf86963392ec6842d27e9d60f6a0858ba6371152f2318114" => :mojave
  end
end
