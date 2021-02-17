#
# Перечисление наименований REST-запросов
#
module RestApiCalls
	service_elem = '',
	ServicesWiLoyaltyProgram = '/wi/loyalty-program',
	ServiceParticipationsAwardsGeneration = '/participations/?:p1?/awards-generation',
	ServiceParticipationsAwardsAwardChoice = '/participations/?:p1?/awards/?:p2?/award-choice',
	ServiceParticipationsAwardsAwardCashin = '/participations/?:p1?/awards/?:p2?/award-cashin'
	
end


#
# Перечисление путей для группы JSON-файлов с ответами для каждого REST-запроса
#
module RestApiCallsPath
	service_elem = '',
	ServicesWiLoyaltyProgram = 'jsons/ServicesWiLoyaltyProgram',
	ServiceParticipationsAwardsGeneration = 'jsons/ServiceParticipationsAwardsGeneration',
	ServiceParticipationsAwardsAwardChoice = 'jsons/ServiceParticipationsAwardsAwardChoice',
	ServiceParticipationsAwardsAwardCashin = 'jsons/ServiceParticipationsAwardsAwardCashin'
end

#
# Перечисления с наименованиями готовых JSON-ответов
#
require_relative 'services_wi_loyalty_program.rb'
require_relative 'services_participations_awards_generation.rb'
require_relative 'service_participations_awards_award_choice.rb'
require_relative 'service_participations_awards_award_cashin.rb'
