{% set my_user = 'jbeck' %}
{% set my_fullname = 'Justin Beck' %}

# {{ my_user }}:
#   user.present:
#     - fullname: {{ my_fullname }}
#     - shell: /bin/bash
#     - home: /Users/{{ my_user }}
#     - groups:
#       - wheel

# /Users/{{ my_user }}/.ssh:
#   file.directory:
#     - user: {{ my_user }}
#     - group: {{ my_user }}
#     - mode: 700
#     - makedirs: True
#     - require:
#       - user: {{ my_user }}

# {{ my_user }}_ssh:
#   ssh_auth:
#     - present
#     - user: {{ my_user }}
#     - source: salt://files/ssh/{{ my_user }}_id_dsa.pub
#     - require:
#       - user: {{ my_user }}

# /Users/{{ my_user }}/.vimrc:
#   file.managed:
#     - source: salt://files/env/vimrc
#     - user: {{ my_user }}
#     - group: {{ my_user }}
#     - mode: 644

# {% for dir in '/', '/ftdetect', '/syntax', '/colors', '/after', '/after/ftplugin', '/autoload', '/ftplugin', '/indent', '/compiler' %}
# /Users/{{ my_user }}/.vim{{dir}}:
#   file.directory:
#     - user: {{ my_user }}
#     - group: {{ my_user }}
#     - mode: 755
#     - makedirs: True
#     - require:
#       - user: {{ my_user }}
# {% endfor %}

# {% for file in 'ftdetect/node.vim', 'ftdetect/sls.vim', 'syntax/jquery.vim', 'syntax/python.vim', 'syntax/javascript.vim', 'syntax/sls.vim', 'syntax/perl.vim', 'syntax/mako.vim', 'syntax/pod.vim', 'syntax/actionscript.vim', 'filetype.vim', 'colors/inkpot.vim', 'colors/desert256.vim', 'after/ftplugin/python.vim', 'after/ftplugin/javascript.vim', 'ftplugin/rst.vim', 'ftplugin/sls.vim', 'indent/javascript.vim', 'compiler/gjslint.vim', 'compiler/pylint.vim' %}
# /Users/{{ my_user }}/.vim/{{file}}:
#   file.managed:
#     - source: salt://files/env/dot_vim/{{file}}
#     - user: {{ my_user }}
#     - group: {{ my_user }}
#     - mode: 644
# {% endfor %}

# /Users/{{ my_user }}/.gitconfig:
#   file.managed:
#     - source: salt://files/env/gitconfig
#     - user: {{ my_user }}
#     - group: {{ my_user }}
#     - mode: 644
#     - template: jinja
#     - defaults:
#       my_name: Justin Beck
#       my_email: justinbeck@mac.com

# /Users/{{ my_user }}/.bashrc:
#   file.managed:
#     - source: salt://files/env/bashrc
#     - user: {{ my_user }}
#     - group: {{ my_user }}
#     - mode: 644
#     - template: jinja