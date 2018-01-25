$LSB_RELEASE = `cat /etc/lsb-release | grep CODENAME | cut -d "=" -f 2 | tr -d "\n"`

include_recipe "../cookbooks/apt.rb"
include_recipe "../cookbooks/common.rb"
include_recipe "../cookbooks/git.rb"
include_recipe "../cookbooks/tmux.rb"
include_recipe "../cookbooks/docker.rb"

execute "add vagrant user to docker group" do
  command <<-CMD
    usermod -a -G docker vagrant
  CMD
end
