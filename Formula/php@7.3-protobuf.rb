require_relative "../lib/php_pecl_formula"

class PhpAT73Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.13.0.1.tgz"
  sha256 "0e7f0830f95d856fad8eb1e770ea7c81386f4d676615c5d97f7d3ca474e4fd6f"
  license "BSD-3-Clause"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "4508ad94327824b3dac61bb66d314de20eb033eef9b5298f103ac61c524c176f" => :catalina
    sha256 "e13d432df4f26c6128cb670e8be7b0128d48a07463db6425f8d959c5c607abec" => :mojave
  end
end
