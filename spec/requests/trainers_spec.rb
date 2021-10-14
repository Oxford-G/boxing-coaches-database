require 'rails_helper'

RSpec.describe 'Trainers', type: :request do
  let!(:trainers) { create_list(:trainer, 5) }
  let(:trainer_id) { trainers.first.id }

  describe 'GET /trainers' do
    before { get '/trainers' }

    it 'returns trainers' do
      expect(json).not_to be_empty
      expect(json.size).to eq(5)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /trainers/:id' do
    before { get "/trainers/#{trainer_id}" }

    context 'when the record exists' do
      it 'returns the trainer' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(trainer_id)
      end

      it 'return status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the trainer doesn\'t exist' do
      let(:trainer_id) { 100 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Trainer/)
      end
    end
  end
end
