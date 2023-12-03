require_relative "../lib/php_pecl_formula"

class PhpAT82Igbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.2.15.tgz"
  sha256 "eff099b0343b45fbe9765d4b3d441064ddefbbf9cfb7198487de9bda6b8f4907"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:   "a485df2accdbb4baae5c1ce9e961f00b10e8ad126df276c9d114d2f2ffa01a6b"
    sha256 cellar: :any_skip_relocation, ventura:  "5f5243df743c9fd33dd26c19056bfac5a107ce190cc6020c902a805417aaf3a6"
    sha256 cellar: :any_skip_relocation, monterey: "0fc87e1e96de9c46e84260f271f9f3cf532907d8e1f7cb78a41d60da9b34f9c3"
  end

  deprecate! date: "2025-12-08", because: :unsupported

  conf_order "05"
end
