package compass.guid.generator;

import org.apache.cordova.CordovaPlugin;
import org.apache.cordova.CallbackContext;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import java.util.UUID;

/**
 * This class echoes a string called from JavaScript.
 */
public class Guid extends CordovaPlugin {

    @Override
    public boolean execute(String action, JSONArray args, CallbackContext callbackContext) throws JSONException {
        if (action.equals("newGuid")) {
            this.newGuid(callbackContext);
            return true;
        }
        return false;
    }

    private void newGuid(CallbackContext callbackContext) {

        /*
        if (message != null && message.length() > 0) {
            callbackContext.success(message);
        } else {
            callbackContext.error("Expected one non-empty string argument.");
        }
        */

        UUID uuid = UUID.randomUUID();
        String randomUUIDString = uuid.toString();

        callbackContext.success(randomUUIDString);
    }
}
