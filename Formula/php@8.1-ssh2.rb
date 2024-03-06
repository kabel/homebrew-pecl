require_relative "../lib/php_pecl_formula"

class PhpAT81Ssh2 < PhpPeclFormula
  extension_dsl "Bindings for the libssh2 library"

  url "https://pecl.php.net/get/ssh2-1.4.1.tgz"
  sha256 "7bca5b23f731db9d8ed0aea5db9bb15da8ff133b0fbba96102b82e95da4d8764"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "c9bd9662a570c10ef4303329f293754a6372a48ca6658d53e82bdee7268f32f9"
    sha256 cellar: :any, ventura:  "f5ac29fc329cbd56189e00ca34184fe6f599d54cbef63bd7bb5c7b29ea207f99"
    sha256 cellar: :any, monterey: "720f8e9a8f770da6e85d1382034c12ebc6b191d341bb3b30b48cf89cabed2817"
    sha256 cellar: :any, big_sur:  "7cb4b02161317cb74df8ba79116004aef6d18c1efc14cab21b3bb063a3bc2099"
  end

  deprecate! date: "2024-11-25", because: :unsupported

  depends_on "libssh2"

  configure_arg "--with-ssh2=#{Formula["libssh2"].opt_prefix}"
end
