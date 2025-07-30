/// @description Move and destroy

speed -= decelaration;

// Destroy if speed reaches 0
if speed <= 0 {
	instance_destroy();	
}