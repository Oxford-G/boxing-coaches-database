require 'rails_helper'

RSpec.describe 'Appointments', type: :request do
  let!(:user) { create(:user) }
  let!(:trainer) { create(:trainer) }
  let!(:appointments) { create_list(:appointment, 10, user_id: user.id, trainer_id: trainer.id) }
  let(:user_id) { user.id }
  let(:trainer_id) { trainer.id }
  let(:id) { appointments.first.id }

  describe 'GET /users/:user_id/appointments' do
    before { get "/users/#{user_id}/appointments" }

    context 'when user exist' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end

      it 'returns all the user appointments' do
        expect(json.size).to eq(10)
      end
    end

    context 'when user doesn\'t exist' do
      let(:user_id) { 50 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find User/)
      end
    end
  end

  describe 'POST /users/:user_id/appointments' do
    let(:correct_attributes) { { appointmentTime: Time.now, user_id: user_id, trainer_id: trainer_id } }

    context 'when request attributes are valid' do
      before { post "/users/#{user_id}/appointments", params: correct_attributes }

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when an invalid request' do
      before do
        post "/users/#{user_id}/appointments",
             params: { appointment_time: Time.now, user_id: user_id, trainer_id: trainer_id }
      end

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a failure message' do
        expect(response.body).to match(/Validation failed: Appointmenttime can't be blank/)
      end
    end
  end

  describe 'DELETE /users/:id/appointments/:id' do
    before { delete "/users/#{user_id}/appointments/#{id}" }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end
