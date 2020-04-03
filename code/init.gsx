startGameType()
{
	thread code\scriptcommands::init();
	thread code\rcon_commands::rconSupport();
	thread onPlayerConnect();
}

onPlayerConnect()
{
	for(;;)
	{
		level waittill( "connected", player );
		
		player thread initialSetup();
	}
}

initialSetup()
{
	self endon( "disconnect" );

	if( !isDefined( self.pers[ "fullbright" ] ) )
	{
		self.pers[ "fullbright" ] = self getStat( 3160 );
		self.pers[ "fov" ] = self getStat( 3161 );
		self.pers[ "promodTweaks" ] = self getStat( 3162 );
	}
	
	self waittill( "spawned_player" );
	
	switch( self.pers[ "fov" ] )
	{
		case 0:
			self setClientDvar( "cg_fovscale", 1.0 );
			self setClientDvar( "cg_fov", 80 );
			break;
		case 1:
			self setClientDvar( "cg_fovscale", 1.125 );
			self setClientDvar( "cg_fov", 80 );
			break;
		case 2:
			self setClientDvar( "cg_fovscale", 1.25 );
			self setClientDvar( "cg_fov", 80 );
			break;
		default:
			break;
	}
	
	if( self.pers[ "fullbright" ] == 1 )
		self setClientDvar( "r_fullbright", 1 );
	
	if( self.pers[ "promodTweaks" ] == 1 )
		self SetClientDvars( "r_filmTweakInvert", "0",
                     	     "r_filmTweakBrightness", "0",
                     	     "r_filmusetweaks", "1",
                     	     "r_filmTweakenable", "1",
                      	     "r_filmtweakLighttint", "0.8 0.8 1",
                       	     "r_filmTweakContrast", "1.2",
                       	     "r_filmTweakDesaturation", "0",
                       	     "r_filmTweakDarkTint", "1.8 1.8 2" );
}