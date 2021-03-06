Data         = require './data'

jira_Details = new Data().folder_Data.path_Combine('config.json').load_Json()

config_data =
  via_config : jira_Details?
  protocol   : jira_Details?.protocol   ||'https',
  host       : jira_Details?.host       ||'{host}'    ,
  username   : jira_Details?.username   ||'{username}',
  password   : jira_Details?.password   ||'{password}',
  apiVersion : jira_Details?.apiVersion || 'latest'   ,
  strictSSL  : false
  neo4j      : {username: 'neo4j', password: 'test'}


module.exports = config_data
