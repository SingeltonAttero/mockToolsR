require 'sinatra'

require_relative 'base_enums.rb'

#
# Основная структура для хранения соответствия между запросом и ответом
# 		в качестве ключа выступаем имя запроса
#		в качесте значения используется имя JSON-файла с ответом
#
hashMapRestApiCalls = Hash.new()

#
# Установка значений по умолчанию
#
#[BEGIN]

hashMapRestApiCalls[RestApiCalls::ServicesWiLoyaltyProgram] = ServicesWiLoyaltyProgram::JSON_1
hashMapRestApiCalls[RestApiCalls::ServiceParticipationsAwardsGeneration] = ServiceParticipationsAwardsGeneration::JSON_1
hashMapRestApiCalls[RestApiCalls::ServiceParticipationsAwardsAwardChoice] = ServiceParticipationsAwardsAwardChoice::JSON_1
hashMapRestApiCalls[RestApiCalls::ServiceParticipationsAwardsAwardCashin] = ServiceParticipationsAwardsAwardCashin::JSON_1
#[END]
#
#  Специализированный запрос, устанавливающий файл с JSON-ответом для конкретного запроса
# 		:RestApiName	- запрос, для которого устанавливается ответ
#		:json 			- имя JSON-файла с ответом для указанного запроса
#

get '/wi/loyalty-program' do
	content_type:json
	filename = RestApiCallsPath::ServicesWiLoyaltyProgram + "/" + hashMapRestApiCalls[RestApiCalls::ServicesWiLoyaltyProgram] 
	File.read(filename)
end

post '/participations/?:p1?/awards-generation' do
	content_type:json
	filename = RestApiCallsPath::ServiceParticipationsAwardsGeneration + "/" + hashMapRestApiCalls[RestApiCalls::ServiceParticipationsAwardsGeneration] 
	File.read(filename)
end

post '/participations/?:p1?/awards/?:p2?/award-choice' do
	content_type:json
	filename = RestApiCallsPath::ServiceParticipationsAwardsAwardChoice + "/" + hashMapRestApiCalls[RestApiCalls::ServiceParticipationsAwardsAwardChoice] 
	File.read(filename)
end

post '/participations/?:p1?/awards/?:p2?/award-cashin' do
	content_type:json
	filename = RestApiCallsPath::ServiceParticipationsAwardsAwardCashin + "/" + hashMapRestApiCalls[RestApiCalls::ServiceParticipationsAwardsAwardCashin] 
	File.read(filename)
end