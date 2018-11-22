require 'spec_helper'

describe 'working through various arrays' do

  context 'standard 1 dimensional arrays' do
    dog_breeds = ['jack russell', 'boxer', 'bloodhound', 'greyhound']

    it 'the first entry should equal jack russel' do
      # Use array methods only
      # puts dog_breeds.methods
      expect(dog_breeds.first).to eql 'jack russell'
    end

    it 'the last entry should equal greyhound' do
      # Use array methods only
      expect(dog_breeds.last).to eql 'greyhound'

    end

    it 'the second entry should equal boxer' do
      # Use array index only i.e. array[0]
      expect(dog_breeds[1]).to eql 'boxer'

    end

  end

  context 'test 2 dimensional arrays' do

    dog_breed_and_names = [['jack russell', 'archie'],['boxer', 'bruce'],['bloodhound', 'droopy'], ['greyhound', 'streak']]

    it 'the first dog name should equal archie' do
      # Use a mix of array methods and indexes
      expect(dog_breed_and_names[0][1]).to eql 'archie'
    end

    it 'the second last entry should be a bloodhound called droopy' do
      # Use array index only i.e. array[0]
      expect(dog_breed_and_names[2][1]).to eql 'droopy'
    end

    it 'the second entry should be a boxer' do
      # Use array index only i.e. array[0]
      expect(dog_breed_and_names[1][0]).to eql 'boxer'
    end

  end

  context 'test multidimensional arrays' do
    dog_breed_names_age_and_health = [['jack russell', 'archie',[4, 'healthy']],['boxer', 'bruce',[7,'bad back']],['bloodhound', 'droopy', [6, 'healthy']], ['greyhound', 'streak',[12, 'old dog']]]

    it 'the last dog should be called streak and is an old dog' do
      # Use a mix of array methods and indexes
      expect(dog_breed_names_age_and_health.last[1]).to eql 'streak'
      expect(dog_breed_names_age_and_health.last.last[1]).to eql 'old dog'

    end

    it 'the bloodhound should be 6 years old and healthy' do
      # Use a mix of array methods and indexes
      expect(dog_breed_names_age_and_health[2][0]).to eql 'bloodhound'
    end

    it 'the first dog should be a jack russell and 4 years old' do
      # Use array index only i.e. array[0]
      expect(dog_breed_names_age_and_health[0][0]).to eql 'jack russell'
    end

  end

end
