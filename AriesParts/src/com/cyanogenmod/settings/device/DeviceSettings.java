package com.cyanogenmod.settings.device;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceCategory;

public class DeviceSettings extends PreferenceActivity  {

    public static final String KEY_GSENSOR = "gsensor";
    public static final String KEY_BACKLIGHT_WAKELOCK = "backlight_wakelock";
    public static final String KEY_BACKLIGHT_TIMEOUT = "backlight_timeout";
    public static final String KEY_FAST_CHARGE = "force_fast_charge";

    private ListPreference mBacklightTimeout;
    private CheckBoxPreference mBacklightWakelock;
    private Preference mGSensor;
    private CheckBoxPreference mFastCharge;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.main);

        mBacklightTimeout = (ListPreference) findPreference(KEY_BACKLIGHT_TIMEOUT);
        mBacklightTimeout.setEnabled(TouchKeyBacklightTimeout.isSupported());
        mBacklightTimeout.setOnPreferenceChangeListener(new TouchKeyBacklightTimeout());

        mBacklightWakelock = (CheckBoxPreference) findPreference(KEY_BACKLIGHT_WAKELOCK);
        mBacklightWakelock.setEnabled(TouchKeyBacklightWakelock.isSupported());
        mBacklightWakelock.setOnPreferenceChangeListener(new TouchKeyBacklightWakelock());

	mGSensor = (Preference) findPreference(KEY_GSENSOR);
        mGSensor.setEnabled(GSensor.isSupported());

        mFastCharge = (CheckBoxPreference) findPreference(KEY_FAST_CHARGE);
        mFastCharge.setEnabled(FastCharge.isSupported());
        mFastCharge.setOnPreferenceChangeListener(new FastCharge());
    }
}
