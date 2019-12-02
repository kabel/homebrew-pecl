require_relative "../lib/php_pecl_formula"

class PhpAT73Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.10.0.tgz"
  sha256 "15ae87fa87775c2a729842554c87973e16c9726905f62a407c547ab6c44434a8"
  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "6cc8c003cc1e25868d1fc1635d170401b410fa08b6f40cb1e6bc08b6520c178e" => :mojave
    sha256 "8bb78c39f5b011e8265bc57fc642af03ae3c5f4c2cac9ac8293ad98e7b50273c" => :high_sierra
  end

end
