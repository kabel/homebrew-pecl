require_relative "../lib/php_pecl_formula"

class PhpAT73Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.11.2.tgz"
  sha256 "1f269a4e04777c978e9d4893d5a0c9edd1bcbd3ceb039224e61e95e9dbf40d2e"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "245800d8ec710975e33507034e1c3539b4f25bffeffede2dbca9ea6ddd89ffb4" => :mojave
    sha256 "56d452d11767980a1ab4a0b7a99327caa883b178de1a71f9e662f42f978b3c6b" => :high_sierra
  end
end
