require_relative "../lib/php_pecl_formula"

class PhpAT73Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.11.3.tgz"
  sha256 "363d302991ce2ef7b63f2e1e24ae75fd7e245d24ce567ac65e44d12bc1c224b5"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "680135d5865cf1e73b1099255e19327583a8d81fcfc09f4933487479908620c3" => :mojave
    sha256 "69ddea70b8f0f350aa4c10bfff598c5d21071933d91cdd564d422ce76c665faf" => :high_sierra
  end
end
