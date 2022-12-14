Dragonfly.app(:workarea).configure do
  unless processors.include?(:details)
    processor :details do |content|
      content.process!(:encode, :jpg, Workarea.config.jpg_encode_options)
      content.process!(:thumb, '500*500')
      content.process!(:optim)
    end
  end
end
