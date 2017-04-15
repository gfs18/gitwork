package com.yc.ht.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.ht.entity.Languages;
import com.yc.ht.mapper.LanguageMapper;
import com.yc.ht.service.LanguageService;

@Service("languageService")
public class LanguageServiceImpl implements LanguageService {

	@Autowired
	private LanguageMapper languageMapper;
	
	@Override
	public Languages findLanguageByName(String language) {
		return languageMapper.findLanguageByName(language);
	}

	@Override
	public boolean addLanguage(String language) {
		return languageMapper.addLanguage(language)>0;
	}

}
