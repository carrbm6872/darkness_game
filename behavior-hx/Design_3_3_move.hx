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



class Design_3_3_move extends ActorScript
{          	
	
public var _8way:Bool;

 
 	public function new(dummy:Int, actor:Actor, engine:Engine)
	{
		super(actor, engine);	
		nameMap.set("8way", "_8way");
_8way = false;
nameMap.set("Actor", "actor");

	}
	
	override public function init()
	{
		    
    addWhenUpdatedListener(null, function(elapsedTime:Float, list:Array<Dynamic>):Void {
if(wrapper.enabled){
        /* "If not moving, set movement speed to 0." */
        if((!(isKeyDown("left")) && !(isKeyDown("right"))))
{
            actor.setXVelocity(0);
}

        if((!(isKeyDown("up")) && !(isKeyDown("down"))))
{
            actor.setYVelocity(0);
}

        /* "If player trying to move diagnally, set 8way to true." */
        if(((isKeyDown("down") && isKeyDown("left")) || (isKeyDown("down") && isKeyDown("right"))))
{
            _8way = true;
propertyChanged("_8way", _8way);
}

        else
{
            if(((isKeyDown("up") && isKeyDown("left")) || (isKeyDown("up") && isKeyDown("right"))))
{
                _8way = true;
propertyChanged("_8way", _8way);
}

            else
{
                _8way = false;
propertyChanged("_8way", _8way);
}

}

        /* "Move player" */
        if((isKeyDown("left") && !(_8way)))
{
            actor.setXVelocity(-8);
}

        if((isKeyDown("right") && !(_8way)))
{
            actor.setXVelocity(8);
}

        if((isKeyDown("down") && !(_8way)))
{
            actor.setYVelocity(8);
}

        if((isKeyDown("up") && !(_8way)))
{
            actor.setYVelocity(-8);
}

}
});

	}	      	
	
	override public function forwardMessage(msg:String)
	{
		
	}
}