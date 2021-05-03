# get JRN's EDI credentials to supply as EDIutils function arguments
edicred <- list(
user.id = '<username>',
user.pass = '<password>',
affiliation = 'EDI')

# get JRN metabase credentials to supply as MetaEgress function arguments
mbcred <- list(
host = "<servername or ip>",
port = 5432,
user = '<username>',
password = '<password>')

#set the environmental variables for the jrn-data-entities bucket on GCS
Sys.setenv("AWS_S3_ENDPOINT" = "storage.googleapis.com",
           "AWS_ACCESS_KEY_ID" = "<aws_accesskeyid>",
           "AWS_SECRET_ACCESS_KEY" = "<aws_secretaccesskey>",
           "AWS_DEFAULT_REGION" = "us-west4",
           "AWS_SESSION_TOKEN" = "mytoken")
