package com.cht.cloudotp

class IdImage {
	
	byte[] idImage;

	
    static constraints = {
		idImage nullable: true, maxSize: 1024 * 1024 * 3;
    }
}