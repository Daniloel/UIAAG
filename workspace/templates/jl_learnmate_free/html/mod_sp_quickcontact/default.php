<?php
/*
# mod_sp_quickcontact - Ajax based quick contact Module by JoomShaper.com
# -----------------------------------------------------------------------
# Author    JoomShaper http://www.joomshaper.com
# Copyright (C) 2010 - 2014 JoomShaper.com. All Rights Reserved.
# License - http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
# Websites: http://www.joomshaper.com
*/

// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );
?>
<div id="sp_quickcontact<?php echo $uniqid ?>" class="sp_quickcontact">
	<div id="sp_qc_status"></div>
	<form id="sp-quickcontact-form">
		  <div class="jl-contact-form">

			<div class="uk-grid">
			  <div class="uk-width-large-1-2 uk-width-medium-1-2 uk-grid-width-small-1-1">
					<div class="sp_qc_clr"></div>
					<input type="text" name="name" id="name" onfocus="if (this.value=='Name...') this.value='';" onblur="if (this.value=='') this.value='Name...';" value="Name..." required="">
			  </div>
			  <div class="uk-width-large-1-2 uk-width-medium-1-2 uk-grid-width-small-1-1">
				<div class="sp_qc_clr"></div>
					<input type="email" name="email" id="email" onfocus="if (this.value=='Email...') this.value='';" onblur="if (this.value=='') this.value='Email...';" value="Email..." required="">
			  </div>

			</div>

					<div class="sp_qc_clr"></div>
					<input type="text" name="subject" id="subject" onfocus="if (this.value=='Subject...') this.value='';" onblur="if (this.value=='') this.value='Subject...';" value="Subject...">

			<div class="sp_qc_clr"></div>
				<textarea name="message" id="message" onfocus="if (this.value=='Message...') this.value='';" onblur="if (this.value=='') this.value='Message...';" cols="" rows="">Message...</textarea>

			<div class="sp_qc_clr"></div>
							<input type="text" name="sccaptcha" placeholder="3 + 4 = ?" required="">

			<div class="uk-width-1-1 uk-text-center">
				<div class="sp_qc_clr"></div>
				<input id="sp_qc_submit" class="button" type="submit" value="Send Message">
				<div class="sp_qc_clr"></div>
			</div>
		</div>
</form>
</div>
