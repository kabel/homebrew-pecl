require_relative "../lib/php_pecl_formula"

class PhpAT71Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.10.0.tgz"
  sha256 "15ae87fa87775c2a729842554c87973e16c9726905f62a407c547ab6c44434a8"
  revision 1

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "9f4ed55b3bd7fb5fef2787ca1c4827384697b2e7fd4fb36e143a14d0ad98156a" => :mojave
    sha256 "3fc771985db8d95e3da13ecbdc0778f6946b45646a0e24c5065e612cab6993a3" => :high_sierra
  end
end
