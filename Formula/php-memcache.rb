require_relative "../lib/php_pecl_formula"

class PhpMemcache < PhpPeclFormula
  extension_dsl "memcache extension"

  url "https://pecl.php.net/get/memcache-8.2.tgz"
  sha256 "b3f0640eacdeb9046c6c86a1546d7fb8a4e9f219e5d9a36a287e59b2dd8208e5"
  revision 2
  license "PHP-3.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "c19374b7da74df88ac22c869248d250fb3aac62623afb0eba0335b7cec35ba20"
    sha256 cellar: :any_skip_relocation, ventura: "faf9bf1aa6081f163d7e4b245b53cac2a57417c5f8d4443a93a282b666fedf89"
  end

  on_macos do
    configure_arg "--with-zlib-dir=#{MacOS.sdk_path_if_needed}/usr"
  end
end
