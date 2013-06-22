.class public Lcom/cyanogenmod/settings/device/TouchKeyBacklightTimeout;
.super Ljava/lang/Object;
.source "TouchKeyBacklightTimeout.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final DEFAULT_BACKLIGHT_TIMEOUT:I = 0x640

.field private static final FILE:Ljava/lang/String; = "/sys/class/misc/notification/bl_timeout"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    .line 19
    const-string v0, "/sys/class/misc/notification/bl_timeout"

    invoke-static {v0}, Lcom/cyanogenmod/settings/device/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static restore(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 28
    invoke-static {}, Lcom/cyanogenmod/settings/device/TouchKeyBacklightTimeout;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 30
    .local v0, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v1, "/sys/class/misc/notification/bl_timeout"

    const-string v2, "backlight_timeout"

    const/16 v3, 0x640

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cyanogenmod/settings/device/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .end local v0           #sharedPrefs:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 36
    const-string v0, "/sys/class/misc/notification/bl_timeout"

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {v0, p2}, Lcom/cyanogenmod/settings/device/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const/4 v0, 0x1

    return v0
.end method
