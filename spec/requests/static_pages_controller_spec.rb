require 'rails_helper'


RSpec.describe 'StaticPagesControllers', type: :request do

  def self.should_get_static_page(*links)
    links.each do |a|
      it "#{a} have status 200" do
        get a
        expect(response.status).to eq(200)
        subject { get a }
        expect(subject).to render_template(a[1..])
      end
    end
  end
  should_get_static_page'/home', '/help', '/about'
end
