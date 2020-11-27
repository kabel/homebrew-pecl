require_relative "../lib/php_pecl_formula"

class PhpAT74Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.14.0.tgz"
  sha256 "6d4576f2ec472f6b1b5048b833e679164816df3580118a9e63c160888426acd1"
  license "BSD-3-Clause"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "fb94c42c5fffdfc120164de9c5d9b4b03de5bc8037193f270f46380ac979d144" => :catalina
    sha256 "3fc2101b2160114baeeb996475ca3a88c2cbd613f1cef98b432b2879a288a785" => :mojave
  end
end
