require 'rails_helper'

RSpec.describe StudentsController, type: :controller do
  describe 'students#index' do
    describe 'when passed a search query on the "query" parameter' do
      render_views

      it 'only renders items that match the query' do
        b = Faker::Date.between(from: 25.years.ago, to: 18.years.ago)
        Student.create(name: 'Byronius Karbitus Maris', hometown: "San Francisco", birthday: b)
        Student.create(name: 'Notorious Byron', hometown: "Brooklyn", birthday: b)
        Student.create(name: 'Blah Byron Blah', hometown: "Manhattan", birthday: b)
        Student.create(name: 'King Zebra', hometown: "New Prussia", birthday: b)

        get :index, params: { search: "Byron" }

        expect(response.body).not_to match(/Zebra/)
      end
    end
  end

end
