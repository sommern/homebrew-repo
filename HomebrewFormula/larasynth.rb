class Larasynth < Formula
  desc "Larasynth can learn to turn the knobs of your synthesizer for you."
  homepage "https://github.com/sommern/larasynth"
  url "https://github.com/sommern/larasynth/archive/v0.1.1.tar.gz"
  sha256 "e5073b8ac07e67d2e8484f5d49fbb462750dbad43b50a44b6afc26be628c4d8b"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "lara"
  end
end
