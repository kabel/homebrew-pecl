require_relative "../lib/php_pecl_formula"

class PhpAT82Uuid < PhpPeclFormula
  extension_dsl "UUID extension"

  url "https://pecl.php.net/get/uuid-1.2.1.tgz"
  sha256 "2235c8584ca8911ce5512ebf791e5bb1d849c323640ad3e0be507b00156481c7"
  license "LGPL-2.1-only"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "41cff82843932a9cf5e8640aa4eddce6871cab7c325804fc3e4bb05d5c4b6efa"
    sha256 cellar: :any, ventura:  "41fd70145afddca3018743e6ca440f7cb81c14928f918fcdbccabb354b7490c0"
    sha256 cellar: :any, monterey: "d4e138fc44daaaaa5666fb85c5f107cbdc40ca0d931f32a2d479313dc798dbac"
  end

  deprecate! date: "2026-12-31", because: :unsupported

  depends_on "e2fsprogs"

  configure_arg "--with-uuid=#{Formula["e2fsprogs"].opt_prefix}"
end
