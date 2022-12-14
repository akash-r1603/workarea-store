Dragonfly.app(:workarea).configure do
  processors = Dragonfly.app(:workarea).processors.name
  unless processors.include?(:details)
    processor :details do |content|
      content.process!(:encode, :jpg, Workarea.config.jpg_encode_options)
      content.process!(:thumb, '500*500')
      content.process!(:optim)
    end
  end

  unless processors.include?(:large_thumb_2x)
    processor :large_thumb_2x do |content|
      content.process!(:encode, :jpg, Workarea.config.jpg_encode_options)
      content.process!(:thumb, '440x')
      content.process!(:optim)
    end
  end
end
