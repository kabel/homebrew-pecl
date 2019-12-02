require_relative "../lib/php_pecl_formula"

class PhpAT72Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.10.0.tgz"
  sha256 "15ae87fa87775c2a729842554c87973e16c9726905f62a407c547ab6c44434a8"
  revision 1

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "b66ac76c7584ffa9519d755535af6a317c9dd5f1e960ffc8b82db93e2a068a51" => :mojave
    sha256 "ee373c9702f358d0db0933a168e364d0234cb7e34bef1050e9f7525d4f412d0b" => :high_sierra
  end
end
