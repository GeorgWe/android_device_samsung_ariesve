package com.cyanogenmod.settings.device;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import android.preference.PreferenceManager;

public class FastCharge implements OnPreferenceChangeListener {
    private static final String FILE = "/sys/kernel/fast_charge/force_fast_charge";

    public static boolean isSupported() {
        return Utils.fileExists(FILE);
    }

    public static void restore(Context context) {
        if (!isSupported()) {
            return;
        }
        SharedPreferences sharedPrefs = PreferenceManager.getDefaultSharedPreferences(context);
        Utils.writeValue(FILE, sharedPrefs.getBoolean(DeviceSettings.KEY_FAST_CHARGE, false) ? "1" : "0");
    }

    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {		
	    Utils.writeValue(FILE, ((Boolean)newValue) ? "1" : "0");
        return true;
    }
}

