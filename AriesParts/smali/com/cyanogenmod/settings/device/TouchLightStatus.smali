.class public Lcom/cyanogenmod/settings/device/TouchLightStatus;
.super Ljava/lang/Object;
.source "TouchLightStatus.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final FILE:Ljava/lang/String; = "/sys/class/misc/notification/touchlight_enabled"


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
    .line 18
    const-string v0, "/sys/class/misc/notification/touchlight_enabled"

    invoke-static {v0}, Lcom/cyanogenmod/settings/device/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static restore(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 27
    invoke-static {}, Lcom/cyanogenmod/settings/device/TouchLightStatus;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 29
    .local v0, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v2, "/sys/class/misc/notification/touchlight_enabled"

    const-string v1, "touchlight_status"

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "1"

    :goto_0
    invoke-static {v2, v1}, Lcom/cyanogenmod/settings/device/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .end local v0           #sharedPrefs:Landroid/content/SharedPreferences;
    :cond_0
    return-void

    .line 29
    .restart local v0       #sharedPrefs:Landroid/content/SharedPreferences;
    :cond_1
    const-string v1, "0"

    goto :goto_0
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 35
    const-string v1, "/sys/class/misc/notification/touchlight_enabled"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-static {v1, v0}, Lcom/cyanogenmod/settings/device/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const/4 v0, 0x1

    return v0

    .line 35
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method
