class BrowseController < ApplicationController
  def browse
    liked_account_ids = Like.where(account_id: current_account.id).map(&:liked_account_id)
    liked_account_ids << current_account.id
    @matches = current_account.matches

    @users = Account.where.not(id: liked_account_ids)
  end

  def matches
    @matches = current_account.matches
  end

  def approve
    account_id = params[:id]
    # User swipes right
    logger.debug "User id for matching is #{account_id}"
    new_like = Like.new(liked_account_id: account_id)
    new_like.account_id = current_account.id
    
    if new_like.save
      existing_like = Like.where(account_id: account_id, liked_account_id: current_account.id)
      @they_like_us = existing_like.size > 0
    else
    end
  end

  def decline
    # User swipes left
  end
end
