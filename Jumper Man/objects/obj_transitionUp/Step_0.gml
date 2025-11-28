switch (stage) {
    
    case "fade_out":
        alpha += speed;
        if (alpha >= 1) {
			room_goto_next();	
            stage = "fade_in";
        }
        break;

    case "fade_in":
        alpha -= speed;
        if (alpha <= 0) {
            instance_destroy();
        }
        break;
}
