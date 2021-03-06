# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Title test', type: :feature do
  def self.should_get_title(*links)
    links.each do |a|
      it "#{a} have title #{a}|*" do
        visit a
        expect(page).to have_title("#{a[1..].capitalize} | Ruby on Rails Tutorial Sample App", exact: true)
      end
    end
  end

  should_get_title '/home', '/help', '/about'
end
