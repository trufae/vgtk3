module gtk

import gdk

pub struct CheckButton {
	c &GtkWidget
}

pub fn new_check_button() CheckButton {
	return CheckButton{gtk_check_button_new()}
}

pub fn new_check_button_with_label(label string) CheckButton {
	return CheckButton{gtk_check_button_new_with_label(label.str)}
}

pub fn new_check_button_with_mnemonic(label string) CheckButton {
	return CheckButton{gtk_check_button_new_with_mnemonic(label.str)}
}

/* Inherited from ToggleButton */

pub fn (c CheckButton) set_mode(draw_indicator bool) {
	gtk_toggle_button_set_mode(c.c, draw_indicator)
}

pub fn (c CheckButton) get_mode() bool {
	return gtk_toggle_button_get_mode(c.c)
}

pub fn (c CheckButton) toggled() {
	gtk_toggle_button_toggled(c.c)
}

pub fn (c CheckButton) get_active() bool {
	return gtk_toggle_button_get_active(c.c)
}

pub fn (c CheckButton) set_active(is_active bool) {
	gtk_toggle_button_set_active(c.c, is_active)
}

pub fn (c CheckButton) get_inconsistent() bool {
	return gtk_toggle_button_get_inconsistent(c.c)
}

pub fn (c CheckButton) set_inconsistent(setting bool) {
	gtk_toggle_button_set_inconsistent(c.c, setting)
}

/* Inherited from Button */

pub fn (c CheckButton) clicked() {
	gtk_button_clicked(c.c)
}

pub fn (c CheckButton) set_relief(relief ReliefStyle) {
	gtk_button_set_relief(c.c, relief)
}

pub fn (c CheckButton) get_relief() ReliefStyle {
	return ReliefStyle(gtk_button_get_relief(c.c))
}

pub fn (c CheckButton) get_label() string {
	return tos3(gtk_button_get_label(c.c))
}

pub fn (c CheckButton) set_label(label string) {
	gtk_button_set_label(c.c, label.str)
}

pub fn (c CheckButton) set_size(width int, height int) {
	gtk_widget_set_size_request(c.c, width, height)
}

pub fn (c CheckButton) get_use_underline() bool {
	return gtk_button_get_use_underline(c.c)
}

pub fn (c CheckButton) set_use_underline(setting bool) {
	gtk_button_set_use_underline(c.c, setting)
}

pub fn (c CheckButton) set_focus_on_click(focus_on_click bool) {
	gtk_button_set_focus_on_click(c.c, focus_on_click)
}

pub fn (c CheckButton) get_focus_on_click() bool {
	return gtk_widget_get_focus_on_click(c.c)
}

pub fn (c CheckButton) set_image(img_widget Widgeter) {
	wi := img_widget.get_gtk_widget()
	gtk_button_set_image(c.c, wi)
}

pub fn (c CheckButton) get_image() GtkWidget {
	return gtk_button_get_image(c.c)
}

pub fn (c CheckButton) set_image_position(pos Position) {
	gtk_button_set_image_position(c.c, pos)
}

pub fn (c CheckButton) get_image_position() Position {
	return gtk_button_get_image_position(c.c)
}

pub fn (c CheckButton) set_always_show_image(always_show bool) {
	gtk_button_set_always_show_image(c.c, always_show)
}

pub fn (c CheckButton) get_always_show_image() bool {
	return gtk_button_get_always_show_image(c.c)
}

pub fn (c CheckButton) get_event_window() gdk.Window {
	return gdk.Window{gtk_button_get_event_window(c.c)}
}

pub fn (c &CheckButton) on(event_name string, handler fn(button CheckButton, _data voidptr), data voidptr) int {
	return g_signal_connect(c.c, event_name.str, handler, data)
}

/* Inherited from Bin */

pub fn (c CheckButton) get_child() Widget {
	return Widget{gtk_bin_get_child(c.c)}
}

/* Inherited from Container */



/* Inherited from Widget */



/* Implemented from Buildable */



/* Implemented from Actionable */



/* Implemented from Activatable */


/* Implemented from Widgeter */

pub fn (c &CheckButton) get_gtk_widget() &GtkWidget {
	return c.c
}
