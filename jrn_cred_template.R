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
