class Picture < ActiveRecord::Base
  belongs_to :need
  validate :file_invalid?

  #写真アップロード用
  def upfile=(upfile)
    self.imagetype = upfile.content_type
    self.image = upfile.read
  end

  private
  def file_invalid?
    ps = ['image/jpeg', 'image/gif', 'image/png']
    errors.add(:image, 'は画像ファイルではありません') if !ps.include?(self.imagetype)
    errors.add(:image, 'のサイズが5MBを超えています') if self.image.length > 5.megabyte
  end
end
