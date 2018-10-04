/*
@license
dhtmlxScheduler.Net v.3.4.1 Professional Evaluation

This software is covered by DHTMLX Evaluation License. Contact sales@dhtmlx.com to get Commercial or Enterprise license. Usage without proper license is prohibited.

(c) Dinamenta, UAB.
*/
Scheduler._external_drag={from_scheduler:null,to_scheduler:null,drag_data:null,drag_placeholder:null,delete_dnd_holder:function(){var e=this.drag_placeholder;e&&(e.parentNode&&e.parentNode.removeChild(e),document.body.className=document.body.className.replace(" dhx_no_select",""),this.drag_placeholder=null)},copy_event_node:function(e,t){for(var a=null,i=0;i<t._rendered.length;i++){var n=t._rendered[i];if(n.getAttribute("event_id")==e.id||n.getAttribute("event_id")==t._drag_id){a=n.cloneNode(!0),
a.style.position=a.style.top=a.style.left="";break}}return a||document.createElement("div")},create_dnd_holder:function(e,t){if(this.drag_placeholder)return this.drag_placeholder;var a=document.createElement("div"),i=t.templates.event_outside(e.start_date,e.end_date,e);return i?a.innerHTML=i:a.appendChild(this.copy_event_node(e,t)),a.className="dhx_drag_placeholder",a.style.position="absolute",this.drag_placeholder=a,document.body.appendChild(a),document.body.className+=" dhx_no_select",a},move_dnd_holder:function(e){
var t={x:e.clientX,y:e.clientY};if(this.create_dnd_holder(this.drag_data.ev,this.from_scheduler),this.drag_placeholder){var a=t.x,i=t.y,n=document.documentElement,r=document.body,l=this.drag_placeholder;l.style.left=10+a+(n&&n.scrollLeft||r&&r.scrollLeft||0)-(n.clientLeft||0)+"px",l.style.top=10+i+(n&&n.scrollTop||r&&r.scrollTop||0)-(n.clientTop||0)+"px"}},clear_scheduler_dnd:function(e){e._drag_id=e._drag_mode=e._drag_event=e._new_event=null},stop_drag:function(e){e&&this.clear_scheduler_dnd(e),
this.delete_dnd_holder(),this.drag_data=null},inject_into_scheduler:function(e,t,a){e._count=1,e._sorder=0,e.event_pid&&"0"!=e.event_pid&&(e.event_pid=null,e.rec_type=e.rec_pattern="",e.event_length=0),t._drag_event=e,t._events[e.id]=e,t._drag_id=e.id,t._drag_mode="move",a&&t._on_mouse_move(a)},start_dnd:function(e){if(e.config.drag_out){this.from_scheduler=e,this.to_scheduler=e;var t=this.drag_data={};t.ev=e._drag_event,t.orig_id=e._drag_event.id}},land_into_scheduler:function(e,t){if(!e.config.drag_in)return this.move_dnd_holder(t),
!1;var a=this.drag_data,i=e._lame_clone(a.ev);if(e!=this.from_scheduler){i.id=e.uid();var n=i.end_date-i.start_date;i.start_date=new Date(e.getState().min_date),i.end_date=new Date(i.start_date.valueOf()+n)}else i.id=this.drag_data.orig_id,i._dhx_changed=!0;return this.drag_data.target_id=i.id,e.callEvent("onBeforeEventDragIn",[i.id,i,t])?(this.to_scheduler=e,this.inject_into_scheduler(i,e,t),this.delete_dnd_holder(),e.updateView(),e.callEvent("onEventDragIn",[i.id,i,t]),!0):!1},drag_from_scheduler:function(e,t){
if(this.drag_data&&e._drag_id&&e.config.drag_out){if(this.to_scheduler==e&&(this.to_scheduler=null),!e.callEvent("onBeforeEventDragOut",[e._drag_id,e._drag_event,t]))return!1;this.create_dnd_holder(this.drag_data.ev,e);var a=e._drag_id;return this.drag_data.target_id=null,delete e._events[a],this.clear_scheduler_dnd(e),e.updateEvent(a),e.callEvent("onEventDragOut",[a,this.drag_data.ev,t]),!0}return!1},reset_event:function(e,t){this.inject_into_scheduler(e,t),this.stop_drag(t),t.updateView()},move_permanently:function(e,t,a,i){
i.callEvent("onEventAdded",[t.id,t]),this.inject_into_scheduler(e,a),this.stop_drag(a),e.event_pid&&"0"!=e.event_pid?(a.callEvent("onConfirmedBeforeEventDelete",[e.id]),a.updateEvent(t.event_pid)):a.deleteEvent(e.id),a.updateView(),i.updateView()}},dhtmlxEvent(window,"load",function(){dhtmlxEvent(document.body,"mousemove",function(e){var t=Scheduler._external_drag,a=t.target_scheduler;if(a)if(t.from_scheduler)if(a._drag_id);else{var i=t.to_scheduler;(!i||t.drag_from_scheduler(i,e))&&t.land_into_scheduler(a,e);
}else"move"==a.getState().drag_mode&&a.config.drag_out&&t.start_dnd(a);else t.from_scheduler&&(t.to_scheduler?t.drag_from_scheduler(t.to_scheduler,e):t.move_dnd_holder(e));t.target_scheduler=null}),dhtmlxEvent(document.body,"mouseup",function(e){var t=Scheduler._external_drag,a=t.from_scheduler,i=t.to_scheduler;if(a)if(i&&a==i)a.updateEvent(t.drag_data.target_id);else if(i&&a!==i){var n=t.drag_data.ev,r=i.getEvent(t.drag_data.target_id);a.callEvent("onEventDropOut",[n.id,n,i,e])?t.move_permanently(n,r,a,i):t.reset_event(n,a);
}else{var n=t.drag_data.ev;a.callEvent("onEventDropOut",[n.id,n,null,e])&&t.reset_event(n,a)}t.stop_drag(),t.current_scheduler=t.from_scheduler=t.to_scheduler=null})}),Scheduler.plugin(function(e){e.config.drag_in=!0,e.config.drag_out=!0,e.templates.event_outside=function(e,t,a){};var t=Scheduler._external_drag;e.attachEvent("onTemplatesReady",function(){dhtmlxEvent(e._obj,"mousemove",function(a){t.target_scheduler=e}),dhtmlxEvent(e._obj,"mouseup",function(a){t.target_scheduler=e})})});