.class public Lcom/cyanogenmod/settings/device/DeviceSettings;
.super Landroid/preference/PreferenceActivity;
.source "DeviceSettings.java"


# static fields
.field public static final KEY_BACKLIGHT:Ljava/lang/String; = "backlight"

.field public static final KEY_BACKLIGHT_TIMEOUT:Ljava/lang/String; = "backlight_timeout"

.field public static final KEY_FAST_CHARGE:Ljava/lang/String; = "force_fast_charge"

.field public static final KEY_GSENSOR:Ljava/lang/String; = "gsensor"

.field public static final KEY_PKFMANAGER:Ljava/lang/String; = "pkfmanager"

.field public static final KEY_TOUCHLIGHT_STATUS:Ljava/lang/String; = "touchlight_status"

.field public static final KEY_VIBRATION:Ljava/lang/String; = "vibration"


# instance fields
.field private mBacklight:Landroid/preference/Preference;

.field private mBacklightTimeout:Landroid/preference/ListPreference;

.field private mFastCharge:Landroid/preference/CheckBoxPreference;

.field private mGSensor:Landroid/preference/Preference;

.field private mPkfManager:Landroid/preference/Preference;

.field private mTouchLightStatus:Landroid/preference/CheckBoxPreference;

.field private mVibration:Lcom/cyanogenmod/settings/device/VibrationPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const/high16 v0, 0x7f04

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/device/DeviceSettings;->addPreferencesFromResource(I)V

    .line 32
    const-string v0, "backlight_timeout"

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/device/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/cyanogenmod/settings/device/DeviceSettings;->mBacklightTimeout:Landroid/preference/ListPreference;

    .line 33
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/DeviceSettings;->mBacklightTimeout:Landroid/preference/ListPreference;

    invoke-static {}, Lcom/cyanogenmod/settings/device/TouchKeyBacklightTimeout;->isSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 34
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/DeviceSettings;->mBacklightTimeout:Landroid/preference/ListPreference;

    new-instance v1, Lcom/cyanogenmod/settings/device/TouchKeyBacklightTimeout;

    invoke-direct {v1}, Lcom/cyanogenmod/settings/device/TouchKeyBacklightTimeout;-><init>()V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 36
    const-string v0, "touchlight_status"

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/device/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/cyanogenmod/settings/device/DeviceSettings;->mTouchLightStatus:Landroid/preference/CheckBoxPreference;

    .line 37
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/DeviceSettings;->mTouchLightStatus:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/cyanogenmod/settings/device/TouchLightStatus;->isSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 38
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/DeviceSettings;->mTouchLightStatus:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/cyanogenmod/settings/device/TouchLightStatus;

    invoke-direct {v1}, Lcom/cyanogenmod/settings/device/TouchLightStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 40
    const-string v0, "backlight"

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/device/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/cyanogenmod/settings/device/DeviceSettings;->mBacklight:Landroid/preference/Preference;

    .line 41
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/DeviceSettings;->mBacklight:Landroid/preference/Preference;

    new-instance v1, Lcom/cyanogenmod/settings/device/TouchKeyBacklight;

    invoke-direct {v1, p0}, Lcom/cyanogenmod/settings/device/TouchKeyBacklight;-><init>(Landroid/preference/PreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 43
    const-string v0, "gsensor"

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/device/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/cyanogenmod/settings/device/DeviceSettings;->mGSensor:Landroid/preference/Preference;

    .line 44
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/DeviceSettings;->mGSensor:Landroid/preference/Preference;

    invoke-static {}, Lcom/cyanogenmod/settings/device/GSensor;->isSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 46
    const-string v0, "force_fast_charge"

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/device/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/cyanogenmod/settings/device/DeviceSettings;->mFastCharge:Landroid/preference/CheckBoxPreference;

    .line 47
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/DeviceSettings;->mFastCharge:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/cyanogenmod/settings/device/FastCharge;->isSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 48
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/DeviceSettings;->mFastCharge:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/cyanogenmod/settings/device/FastCharge;

    invoke-direct {v1}, Lcom/cyanogenmod/settings/device/FastCharge;-><init>()V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 50
    const-string v0, "vibration"

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/device/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/settings/device/VibrationPreference;

    iput-object v0, p0, Lcom/cyanogenmod/settings/device/DeviceSettings;->mVibration:Lcom/cyanogenmod/settings/device/VibrationPreference;

    .line 51
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/DeviceSettings;->mVibration:Lcom/cyanogenmod/settings/device/VibrationPreference;

    invoke-static {}, Lcom/cyanogenmod/settings/device/VibrationPreference;->isSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/device/VibrationPreference;->setEnabled(Z)V

    .line 53
    const-string v0, "pkfmanager"

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/device/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/cyanogenmod/settings/device/DeviceSettings;->mPkfManager:Landroid/preference/Preference;

    .line 54
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/DeviceSettings;->mPkfManager:Landroid/preference/Preference;

    new-instance v1, Lcom/cyanogenmod/settings/device/PkfManager;

    invoke-direct {v1, p0}, Lcom/cyanogenmod/settings/device/PkfManager;-><init>(Landroid/preference/PreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 55
    return-void
.end method
