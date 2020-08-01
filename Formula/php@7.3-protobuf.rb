require_relative "../lib/php_pecl_formula"

class PhpAT73Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.12.4.tgz"
  sha256 "b8826b730355fd0d30bdc9b698f7297a9db13f8d217361882b3db150bdf43681"
  license "BSD-3-Clause"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "4508ad94327824b3dac61bb66d314de20eb033eef9b5298f103ac61c524c176f" => :catalina
    sha256 "e13d432df4f26c6128cb670e8be7b0128d48a07463db6425f8d959c5c607abec" => :mojave
  end
end
