require_relative "../lib/php_pecl_formula"

class PhpAT72Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.10.0.tgz"
  sha256 "15ae87fa87775c2a729842554c87973e16c9726905f62a407c547ab6c44434a8"
  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "5c7a1db2d11b28733280575261e9637b9db1909b526b5051dc2b02c0c1265cbf" => :mojave
    sha256 "24ea8a95d1a08a0f1fa83657b5706334a42521af677843d0a610b27b67554dc0" => :high_sierra
  end
end
