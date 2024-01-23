
class Installer:

    def check_for_loki(self) -> bool:
        return True
    
    def install_loki(self):
        pass

    def install_grafana(self):
        pass

    def install(self):
        pass


installer = Installer()
installer.install()