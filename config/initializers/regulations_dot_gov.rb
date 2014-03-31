RegulationsDotGov::Client.api_key = SECRET_REG_GOV_API_KEY || 'DEMO_KEY'

if Rails.env.development? || Rails.env.test?
  #RegulationsDotGov::Client.override_base_uri('http://api.data.gov/TEST/regulations/beta/')
  RegulationsDotGov::Client.override_base_uri('http://api.data.gov/regulations/beta/')
end

