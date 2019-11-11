
Check the cluster health @ http://kibanaserver:kibanaserver@localhost:9200/_cluster/health?pretty=true&wait_for_status=green

Check example search (in kibana): 

http://localhost:5601/app/kibana#/dev_tools/console?load_from=https:%2F%2Fwww.elastic.co%2Fguide%2Fen%2Felasticsearch%2Freference%2F6.1%2Fsnippets%2F208.console&_g=()

POST /_search
{
    "query" : {
        "term": {
          "design_step_name": {
            "value": "nama"
          }
        }
    }
}