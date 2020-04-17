FactoryBot.define do
  factory :folder do
    title { 'folderのtitle' }
    association :user
  end
end