class TotalPostView < ApplicationRecord

  def self.refresh
    begin
      ActiveRecord::Base.connection.execute('REFRESH MATERIALIZED VIEW CONCURRENTLY total_post_views ')
    rescue ActiveRecord::StatementInvalid, PG::FeatureNotSupported
      ActiveRecord::Base.connection.execute('REFRESH MATERIALIZED VIEW total_post_views ')
    end
  end
end