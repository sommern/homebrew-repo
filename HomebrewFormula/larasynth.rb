class Larasynth < Formula
  desc "Larasynth can learn to turn the knobs of your synthesizer for you."
  homepage "https://github.com/sommern/larasynth"
  url "https://github.com/sommern/larasynth/releases/download/v0.2.5/larasynth-source-0.2.5.tar.gz"
  sha256 "6b6e89298aa23b46c901a7cf4d4c8abccdec9c4187bf4d255fabb8e86f146a74"

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
