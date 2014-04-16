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



class Design_7_7_DrawLightRadius extends ActorScript
{          	
	
public var _Light:Actor;

 
 	public function new(dummy:Int, actor:Actor, engine:Engine)
	{
		super(actor, engine);	
		nameMap.set("Light", "_Light");
nameMap.set("Actor", "actor");

	}
	
	override public function init()
	{
		            createRecycledActor(getActorType(37), 0, 0, Script.FRONT);
        _Light = getLastCreatedActor();
propertyChanged("_Light", _Light);
        /* "We send the actor back one layer so the blackness doesn't cover up the instructions." */
        _Light.sendBackward();
    addWhenUpdatedListener(null, function(elapsedTime:Float, list:Array<Dynamic>):Void {
if(wrapper.enabled){
        /* "The x and y are offset a little bit because the picture used for the light isn't completely centered." */
        _Light.setX(((actor.getXCenter() - _Light.getWidth()/2) + 15));
        _Light.setY(((actor.getYCenter() - _Light.getHeight()/2) + 30));
}
});

	}	      	
	
	override public function forwardMessage(msg:String)
	{
		
	}
}