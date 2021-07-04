# Born2BeRoot

- Uma máquina virtual (VM) é um programa que simula um ambiente computacional, capaz de executar sistemas operacionais e aplicativos como se fosse uma máquina física.

- CentOS:(Community ENTerprise Operating System) é um sistema mais estavle que o Debian, porque recebe com pouca frequencia atualizações no sistema, considerado mais empresarial. Ele pode ser usado como uso comum, porém, é necessário a adição de repositórios adicionais que não vem ativos por padrão.
- Debian: é menos estável que o CentOS, mas não instavel. Isso significa que ele recebe atualiações com mais frequencia que o próprio CentOS. O Debian, como é mais usado pela comunidade, existe uma maior possibilidade de ajuda ao procurar sobre problemas em foruns e afins. Assim como, pela continua atualização, a quantidade de pacotes oferecidos pelo Debian são geralmente maiores e de versão mais recente que o CentOS.

- APT: (Advanced Packaging Tool) é um conjunto de ferramentas para administrar os pacotes. O Apt possui uma interface simples de linha de comando para fazer o download de pacotes e instalá-los, mostrando os procedimentos que estão ocorrendo. Apesar que o APT só remover os pacotes solicitados, possui uma busca de pacotes mais completa. O APT vem por padrão no Debian e é mais utilizado pela comunidade, sendo assim existem mais forum sobre o assunto.
- Aptitude: é um front-end para o Advanced Packaging Tool (APT), sendo assim tem uma interface mais instuitiva e grafica que o APT, mas tem que ser instalado.

- AppArmor: é um sistema de Controle de Acesso Mandatório (MAC - Mandatory Access Control). O qual restringe a capacidade do usuario de acessar ou executar certos objetos no sistema, sendo arquivos, diretórios, portas TCP/UDP, entre outros. Utilizando o path do objeto para identificar e aplicar as restrições configuradas.

- LVM: (Gerenciador de volume lógico) é um método de alocação de espaço. O programa cria um bloco que tem a função de disco rígido (mais próximo de um disco dinâmico), o qual armazena grupos de volumes cuja capacidade é configurada pelo usuário.

- UFW: é uma ferramenta de configuração de firewall, que é um dispositivo de segurança que confere o trafego de informações, bloqueando ou permitindo dados dependendo das regras configuradas.

- CRON: é um sistema que executa em segundo plano, no qual podendo ser editado e realizar tarefas através de tempo. Podendo agendar comandos para horarios especificos;

TTY -> é o que habilita a "conversa" com o terminal

| Comando | Descrição |
| --- | --- |
| `lsblk` |  mostrar as partições |
| `sudo aa-status` | mostrar os status do *AppArmor* |
| `sudo ufw status verbose` |  check that the *ufw* service |
| `sudo ss -tunlp` |  check that the *ssh* service |
| `hostnamectl status` |  mostra o hostname atual e outras informações |
| `hostnamectl set-hostname <novo hostname>` |  alterar o hostname |
| `sudo awk -F ":" '{print $1}' /etc/passwd` |  mostra os *usuários* |
| `sudo awk -F ":" '{print $1}' /etc/group` |  mostra os *grupos* |
| `adduser <usuario>` |  cria um novo usuario com home e tudo |
| `userdel -r <usuario>` |  detela o usuario, -r deleta todos os arquivos |
| `usermod -l <novo nome usuario> <usuario>` |  muda o nome do usuario |
| `groupadd <grupo>` |  cria grupo |
| `groupdel <grupo>` |  deleta grupo |
| `gpasswd -a <usuario> <grupo>` |  adiciona o usuario no grupo |
| `gpasswd -d <usuario> <grupo>` |  remove o usuario do grupo |
| `getent group <grupo>` |  mostra usuarios que estão nesse grupo |
| `passwd <usuario>` |  trocar senha |
| `sudo visudo` |  entra para poder edita o arquivo /etc/sudoers |
| `sudo ufw allow/deny <porta>` | dar acesso/tirar acesso da porta |
| `sudo ufw delete <numero da linha a ser deletada>` |  deletar linha de acesso a alguma porta |
| `ssh [usuario logado]@[ip da VM] -p [porta x]` |  como conectar o terminal do seu computador com a VM |
| `scp -P [porta] [arquivo] [usuario logado]@[ip da VM]:[diretorio]` |  mandar arquivos do seu computador para a VM via terminal |
| `wall` ou `wall -n` |  exibe uma mensagem ou o conteudo de um arquivo no terminal de todos os usuarios conectados |
| `exit` ou `logout` |  terminar conexão do seu computador com a VM |
| `sudo crontab -e` |  editar o arquivo CRON |
