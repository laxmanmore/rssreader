class AsynFeedCallJob < ApplicationJob
  queue_as :default

  def perform
    AsyncRequestsService.new.nokogiri_parser
  end
end