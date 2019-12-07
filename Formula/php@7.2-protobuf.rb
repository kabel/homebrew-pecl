require_relative "../lib/php_pecl_formula"

class PhpAT72Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.11.1.tgz"
  sha256 "e27e195c4c57684aa036c659a34075c8f4373ac667119f25a5d2c52c2c8562b7"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "b66ac76c7584ffa9519d755535af6a317c9dd5f1e960ffc8b82db93e2a068a51" => :mojave
    sha256 "ee373c9702f358d0db0933a168e364d0234cb7e34bef1050e9f7525d4f412d0b" => :high_sierra
  end
end
