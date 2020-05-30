require_relative "../lib/php_pecl_formula"

class PhpAT73Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.12.2.tgz"
  sha256 "1f4c4927007bebee3622ee0f05a71e7087e0c0f638ec9f3839ba2454fb4d11cb"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "530f4f5196d20340e0e5056d03f76eb3f5d29bbfc34ba672da4219bf70a811c9" => :catalina
    sha256 "ab3fe71f84efa09251c8e9df9b053b0587785e924f6f85c20805099e4687fe98" => :mojave
  end
end
