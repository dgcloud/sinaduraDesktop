#!/bin/bash
#compruebo si existe una referencia previa y si existe la borro
sed -i.bak s#x-scheme-handler/sinadura=.*##g $HOME/.local/share/applications/mimeapps.list
sed -i.bak-blank '/^$/d' $HOME/.local/share/applications/mimeapps.list

#añado a la lista de mimetypes la nueva entrada 
echo "x-scheme-handler/sinadura=sinadura-desktop-protocol.desktop" >> $HOME/.local/share/applications/mimeapps.list


#como ha dejado de funcionar que izpack marque los ficheros como +x lo hago a mano
chmod +x $INSTALL_PATH/bin/sinadura.sh
chmod +x $INSTALL_PATH/bin/sinadura-console.sh
