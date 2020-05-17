require_relative "../lib/php_pecl_formula"

class PhpAT72Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.12.0.tgz"
  sha256 "4f45cb699bf6498b7522866711b51c1437bec90c362d6cbc254bef3df8cb1727"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "1998856be36a52d6ca62e7e2351fbc7fc4b69f93dfe40bef669847fe17f9dd58" => :catalina
    sha256 "0dcb7fd6a0da2f1ece9e676a632670057f8dc39bc0c4d37072896a93af6a1a56" => :mojave
  end
end
