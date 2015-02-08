require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'User#index' do
    subject { response.cookies['recent_search_history'] }

    describe 'empty params[:q]' do
      before { get users_path }

      it { is_expected.to be_nil }
    end

    describe 'set some params[:q]' do
      before { get users_path, q: 'my' }

      it { is_expected.to_not be_nil }
      it { is_expected.to eq 'my' }
    end
  end
end
