package com.yc.ht.mapper;

import com.yc.ht.entity.Languages;

public interface LanguageMapper {
	Languages findLanguageByName(String language);
	
	int addLanguage(String language);
}
