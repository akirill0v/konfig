import konfig.models.kube.frontend
import konfig.models.kube.frontend.container
import konfig.models.kube.templates.resource as res_tpl

import file
import yaml

_settings = yaml.decode(file.read("{}/values.yaml".format(file.workdir())))

# The application configuration in stack will overwrite
# the configuration with the same attribute in base.
appConfiguration: frontend.Server {
  **_settings
}
