
library(git2r)
library(usethis)


cred <- git2r::cred_ssh_key(
  publickey = "~/../.ssh/id_rsa.pub",
  privatekey = "~/../.ssh/id_rsa"
)


file.exists(cred$publickey, cred$privatekey)

# Conectar ao Github usando as credenciais
usethis::use_github(credentials = cred)

# Comando para pegar o github token
usethis::browse_github_token()

## Initialize the repository
repo <- git2r::init()

## Display a brief summary of the new repository
repo

## List all references in repository
references(repo)

## List all branches in repository
branches(repo)

## Workdir of repository
workdir(repo)

## List all commits in repository
commits(repo)

## Get HEAD of repository
repository_head(repo)

## Check if HEAD is head
is_head(repository_head(repo))

## Check if HEAD is local
is_local(repository_head(repo))

## List all tags in repository
tags(repo)

## Display configuration
config(repo)

## Create a new file
writeLines("Hello world!", "test0.txt")

status(repo)

## Add file and commit
add(repo, "*") # colocar o asterisco é um truque para adicionar todos os arquivos
commit(repo, message = "Commit message", all = TRUE)



