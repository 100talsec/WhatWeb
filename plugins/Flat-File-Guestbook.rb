##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "Flat-File-Guestbook" do
author "Brendan Coles <bcoles@gmail.com>" # 2011-08-12
version "0.1"
description "The Flat File PHP Guestbook is designed to be lightweight, easy on the server, and simple to install. Requires PHP 4+. - Homepage: http://www.advancebydesign.com/software/php-scripts-and-programmes/mail-and-feedback/php-flat-file-guestbook.html"

# Google results as at 2011-08-12 #
# 5 for inurl:ffgb_admin.php "Please enter the administration area login information to manage the guestbook."

# Dorks #
dorks [
'inurl:ffgb_admin.php "Please enter the administration area login information to manage the guestbook."'
]

# Examples #
examples %w|
beachcaravansburghead.co.uk/ffgb_admin.php
bhc.hostoi.com/med1a/g-b00k/www/ffgb_admin.php
www.jkfoundation.info/feedback/ffgb_admin.php
jamesbonham.co.uk/newsite/guestbook/ffgb_admin.php
www.quinta-serena.com/ffgb_admin.php
|

# Matches #
matches [

# Stylesheet
{ :text=>'<link rel="stylesheet" type="text/css" href="ffgb_styles.css">' },

# Return to the Guestbook link
{ :text=>'<a href="guestbook.php">Return to the Guestbook</a><br>&nbsp;<br>' },

# ffgb_pass field
{ :text=>'<td align="right"><input type="password" value="" name="ffgb_pass"></td></tr>' },

# ffgb_admin.php link
{ :text=>'<a href="ffgb_admin.php"><i>Manage this Guestbook</i></a>' },

]

end

