if(step == 0){
	switch(GameType){
		case 0: //Sou o Server
			server = {
				socket: network_create_server(network_socket_tcp, 6597, 3),
			
			}
		break;
		
		case 1: //Sou o Cliente
			client = {
				socket: network_create_socket(network_socket_tcp),
				connect: function(_ip, _port){
					return network_connect(socket, _ip, _port)
				}
			}
			client.connect("192.168.0.2", 6597);
		break;
	}
	
	step++;
}