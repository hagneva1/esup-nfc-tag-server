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
package org.esupportail.nfctag.service.api;

import org.esupportail.nfctag.exceptions.EsupNfcTagException;
import org.esupportail.nfctag.web.wsrest.json.JsonDamAuthKey;
import org.esupportail.nfctag.web.wsrest.json.JsonFormCryptogram;
import org.esupportail.nfctag.web.wsrest.json.JsonResponseCryptogram;
import org.springframework.web.util.UriComponentsBuilder;

import java.net.URI;

public interface TagWriteApi {

	String getIdFromCsn(String csn) throws EsupNfcTagException;

	String createDiversDamKey(String csn) throws EsupNfcTagException;

	String getDiversDamKey(String csn) throws EsupNfcTagException;

	String resetDiversDamKey(String csn) throws EsupNfcTagException;

	JsonDamAuthKey getDamAuthKey(String csn) throws EsupNfcTagException;

	JsonResponseCryptogram getCryptogram(JsonFormCryptogram jsonFormCryptogram) throws EsupNfcTagException;

}
