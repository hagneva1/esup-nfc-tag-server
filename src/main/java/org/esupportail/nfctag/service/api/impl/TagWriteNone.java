/**
 * Licensed to ESUP-Portail under one or more contributor license
 * agreements. See the NOTICE file distributed with this work for
 * additional information regarding copyright ownership.
 *
 * ESUP-Portail licenses this file to you under the Apache License,
 * Version 2.0 (the "License"); you may not use this file except in
 * compliance with the License. You may obtain a copy of the License at:
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.esupportail.nfctag.service.api.impl;

import javax.annotation.Resource;

import org.esupportail.nfctag.exceptions.EsupNfcTagException;
import org.esupportail.nfctag.service.api.TagWriteApi;
import org.esupportail.nfctag.web.wsrest.json.JsonDamAuthKey;
import org.esupportail.nfctag.web.wsrest.json.JsonFormCryptogram;
import org.esupportail.nfctag.web.wsrest.json.JsonResponseCryptogram;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

import java.net.URI;

public class TagWriteNone implements TagWriteApi {
	
	@Resource
    protected RestTemplate restTemplate;
    
    protected String idFromCsnUrlTemplate;
	
	public void setIdFromCsnUrlTemplate(String idFromCsnUrlTemplate) {
		this.idFromCsnUrlTemplate = idFromCsnUrlTemplate;
	}

	@Override
	public String getIdFromCsn(String csn) throws EsupNfcTagException {
		return "00";
	}

	@Override
	public String createDiversDamKey(String csn) throws EsupNfcTagException {
		return "00";
	}

	@Override
	public String getDiversDamKey(String csn) throws EsupNfcTagException {
		return "00";
	}

	@Override
	public String resetDiversDamKey(String csn) throws EsupNfcTagException {
		return "00";
	}

	@Override
	public JsonDamAuthKey getDamAuthKey(String csn) throws EsupNfcTagException {
		return null;
	}

	@Override
	public JsonResponseCryptogram getCryptogram(JsonFormCryptogram jsonFormCryptogram) throws EsupNfcTagException {
		return null;
	}

}
