module gtk

pub enum ResizeMode {
	parent
	queue
	immediate
}

pub struct Container {
	c &C.GtkContainer
}

pub fn (c &Container) add(widget Widgeter) {
	wgt := widget.get_gtk_widget()
	C.gtk_container_add(c.c, wgt)
}

pub fn (c &Container) set_border_width(border_width int) {
	C.gtk_container_set_border_width(c.c, border_width)
}
