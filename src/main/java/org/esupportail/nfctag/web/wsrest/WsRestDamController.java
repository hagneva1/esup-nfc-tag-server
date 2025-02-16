package org.esupportail.nfctag.web.wsrest;

import nfcjlib.core.DESFireEV1;
import org.esupportail.nfctag.domain.Device;
import org.esupportail.nfctag.exceptions.EsupNfcTagException;
import org.esupportail.nfctag.service.desfire.DESFireEV1Service;
import org.esupportail.nfctag.service.desfire.DesfireDiversificationDamService;
import org.esupportail.nfctag.service.desfire.DesfireUtils;
import org.esupportail.nfctag.web.wsrest.json.JsonDamAuthKey;
import org.esupportail.nfctag.web.wsrest.json.JsonFormCryptogram;
import org.esupportail.nfctag.web.wsrest.json.JsonResponseCryptogram;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.List;

@RequestMapping("/wsrestdam/")
@Controller
public class WsRestDamController {

    protected final Logger log = LoggerFactory.getLogger(this.getClass());

    @Autowired(required=false)
    private DesfireDiversificationDamService desfireDiversificationDamService;

    @RequestMapping(value = "/dam_request_auth_key", method= RequestMethod.GET)
    @ResponseBody
    public JsonDamAuthKey getDamAuthKey(@RequestParam String csn) throws Exception {
        JsonDamAuthKey jsonDamAuthKey = new JsonDamAuthKey();
        jsonDamAuthKey.setResult("ok");
        jsonDamAuthKey.setUid(csn);
        jsonDamAuthKey.setDamAuthKey(DesfireUtils.byteArrayToHexString(desfireDiversificationDamService.getDamAuthKey(csn)));
        return jsonDamAuthKey;
    }

    @RequestMapping(value = "/getCryptogram", method= RequestMethod.POST)
    @ResponseBody
    public JsonResponseCryptogram getCryptogram(@RequestBody JsonFormCryptogram jsonFormCryptogram) throws Exception {
        byte damSlotNo = 0x0000;
        byte damSlotVersion = (byte) 0xFF;
        byte keySettings3 = 0x00;
        byte aksVersion = 0x00;
        byte noKeySet = 0x00;
        byte maxKeySize = 0x00;
        byte rollKey = 0x00;
        JsonResponseCryptogram jsonResponseCryptogram = new JsonResponseCryptogram();
        jsonResponseCryptogram.setResult("ok");
        byte[] encK = desfireDiversificationDamService.calcEncK(desfireDiversificationDamService.getDamEncKey(jsonFormCryptogram.getCsn()), DesfireUtils.hexStringToByteArray(jsonFormCryptogram.getDamDefaultKey()), jsonFormCryptogram.getDamDefaultKeyVersionAsByte());
        jsonResponseCryptogram.setEncK(DesfireUtils.byteArrayToHexString(encK));
        Integer aid = null;
        if (jsonFormCryptogram.getAid() != null) {
            aid = Integer.parseInt(jsonFormCryptogram.getAid(), 16);
        }
        Integer quotaLimit = null;
        if (jsonFormCryptogram.getQuotaLimit() != null) {
            quotaLimit = Integer.parseInt(jsonFormCryptogram.getQuotaLimit());
        }
        Integer isoDfId = null;
        if (jsonFormCryptogram.getIsoDfId() != null) {
            isoDfId = Integer.parseInt(jsonFormCryptogram.getIsoDfId(), 16);
        }
        byte[] isoDfName = null;
        if (jsonFormCryptogram.getIsoDfName() != null) {
            isoDfName = DesfireUtils.hexStringToByteArray(jsonFormCryptogram.getIsoDfName());
        }
        log.info(jsonFormCryptogram.toString());
        byte[] dammac = desfireDiversificationDamService.calcDAMMAC(desfireDiversificationDamService.getDamMacKey(jsonFormCryptogram.getCsn()),
                (byte) DESFireEV1Service.Command.CREATE_DELEGATED_APPLICATION.getCode(), aid, damSlotNo, damSlotVersion, quotaLimit, jsonFormCryptogram.getKeySetting1AsByte(), jsonFormCryptogram.getKeySetting2AsByte(), keySettings3,
                aksVersion, noKeySet, maxKeySize, rollKey, isoDfId, isoDfName, encK);
        jsonResponseCryptogram.setDammac(DesfireUtils.byteArrayToHexString(dammac));
        jsonResponseCryptogram.setDamSlotNO(damSlotNo);
        jsonResponseCryptogram.setDamSlotVersion(damSlotVersion);
        return jsonResponseCryptogram;
    }
}
