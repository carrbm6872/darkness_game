package scripts;

import com.stencyl.graphics.G;

import com.stencyl.behavior.Script;
import com.stencyl.behavior.ActorScript;
import com.stencyl.behavior.SceneScript;
import com.stencyl.behavior.TimedTask;

import com.stencyl.models.Actor;
import com.stencyl.models.GameModel;
import com.stencyl.models.actor.Animation;
import com.stencyl.models.actor.ActorType;
import com.stencyl.models.actor.Collision;
import com.stencyl.models.actor.Group;
import com.stencyl.models.Scene;
import com.stencyl.models.Sound;
import com.stencyl.models.Region;
import com.stencyl.models.Font;

import com.stencyl.Engine;
import com.stencyl.Input;
import com.stencyl.utils.Utils;

import nme.ui.Mouse;
import nme.display.Graphics;
import nme.display.BlendMode;
import nme.events.Event;
import nme.events.TouchEvent;
import nme.net.URLLoader;

import motion.Actuate;
import motion.easing.Back;
import motion.easing.Cubic;
import motion.easing.Elastic;
import motion.easing.Expo;
import motion.easing.Linear;
import motion.easing.Quad;
import motion.easing.Quart;
import motion.easing.Quint;
import motion.easing.Sine;



class Design_14_14_CannotExitScreen extends ActorScript
{          	
	
 
 	public function new(dummy:Int, actor:Actor, engine:Engine)
	{
		super(actor, engine);	
		nameMap.set("Actor", "actor");

	}
	
	override public function init()
	{
		            actor.makeAlwaysSimulate();
    addWhenUpdatedListener(null, function(elapsedTime:Float, list:Array<Dynamic>):Void {
if(wrapper.enabled){
        if((actor.getScreenX() < 0))
{
            actor.setX(getScreenX());
            actor.setXVelocity(0);
}

        if((actor.getScreenY() < 0))
{
            actor.setY(getScreenY());
            actor.setYVelocity(0);
}

        if(((actor.getScreenX() + actor.getWidth()) > getScreenWidth()))
{
            actor.setX((getScreenX() + (getScreenWidth() - actor.getWidth())));
            actor.setXVelocity(0);
}

        if(((actor.getScreenY() + actor.getHeight()) > getScreenHeight()))
{
            actor.setY((getScreenY() + (getScreenHeight() - actor.getHeight())));
            actor.setYVelocity(0);
}

}
});

	}	      	
	
	override public function forwardMessage(msg:String)
	{
		
	}
}