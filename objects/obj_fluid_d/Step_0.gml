if(wake_up){
	instance_activate_object(self);
	self.visible = true;
}else{
	instance_deactivate_object(self);
	self.visible = false;
}