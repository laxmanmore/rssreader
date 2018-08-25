class EntriesController < ApplicationController
  def index
    @entries = Entry.recents
  end
end