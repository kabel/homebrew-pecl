require_relative "../lib/php_pecl_formula"

class PhpAT73Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.12.1.tgz"
  sha256 "5877032d206dc33a8135b6e0f1739b6c3f9e533cd2526e803366ed3a3fb7a3f4"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "530f4f5196d20340e0e5056d03f76eb3f5d29bbfc34ba672da4219bf70a811c9" => :catalina
    sha256 "ab3fe71f84efa09251c8e9df9b053b0587785e924f6f85c20805099e4687fe98" => :mojave
  end
end
