class PostSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :title, :body, :featured_image_url

  def featured_image_url
    if object.featured_image.attached?
      # Ganti :host dengan nilai host Anda
      rails_blob_path(object.featured_image, only_path: true)
    else
      nil
    end
  end


end
