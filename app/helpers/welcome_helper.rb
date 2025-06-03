module WelcomeHelper

  def total_for_banner(banner)
    Rails.cache.fetch("#{banner}_total", expires_in: 12.hours) do
      number_with_delimiter Mara.article_data(banner).count
    end
  end

  def variations_for_banner(banner)
    Rails.cache.fetch("#{banner}_var_total", expires_in: 12.hours) do
      number_with_delimiter Mara.article_data(banner).sum(:number_variants)
    end
  end

  def total_for_all
    Rails.cache.fetch("all_total", expires_in: 12.hours) do
      number_with_delimiter Mara.count
    end
  end

  def variations_for_all
    Rails.cache.fetch("all_var_total", expires_in: 12.hours) do
      number_with_delimiter Mara.sum(:number_variants)
    end
  end
end
