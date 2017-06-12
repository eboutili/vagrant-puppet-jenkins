node 'edb-jenkins' {
  include jenkins
}

# Install the puppet-enterprise-pipeline plugin and dependencies
#   - The plugins w/out versions install latest, which is fine/works.
#   - Requires server restart
#

jenkins::plugin { 'workflow-scm-step': }
jenkins::plugin { 'workflow-step-api': }
jenkins::plugin { 'workflow-support': }
jenkins::plugin { 'ace-editor': }
jenkins::plugin { 'bouncycastle-api': }
jenkins::plugin { 'display-url-api': }
jenkins::plugin { 'durable-task': }
jenkins::plugin { 'jquery-detached': }
jenkins::plugin { 'mailer': }
jenkins::plugin { 'scm-api': }
jenkins::plugin { 'credentials': version => '2.1.13', }
jenkins::plugin { 'script-security': version => '1.28', }
jenkins::plugin { 'plain-credentials': version => '1.4', }
jenkins::plugin { 'structs': version => '1.7', }
jenkins::plugin { 'workflow-api': version => '2.17', }
jenkins::plugin { 'workflow-basic-steps': version => '2.5', }
jenkins::plugin { 'workflow-cps': version => '2.17', }
jenkins::plugin { 'workflow-durable-task-step': version => '2.4', }

jenkins::plugin { 'puppet-enterprise-pipeline': }
