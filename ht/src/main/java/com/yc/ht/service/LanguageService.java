package com.yc.ht.service;

import com.yc.ht.entity.Languages;

public interface LanguageService {
	Languages findLanguageByName(String language);
	
	boolean addLanguage(String language);
}
