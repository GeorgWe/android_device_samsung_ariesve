.class public Lcom/cyanogenmod/settings/device/FastCharge;
.super Ljava/lang/Object;
.source "FastCharge.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final FILE:Ljava/lang/String; = "/sys/kernel/fast_charge/force_fast_charge"


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
    .line 14
    const-string v0, "/sys/kernel/fast_charge/force_fast_charge"

    invoke-static {v0}, Lcom/cyanogenmod/settings/device/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static restore(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 22
    invoke-static {}, Lcom/cyanogenmod/settings/device/FastCharge;->isSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 28
    :goto_0
    return-void

    .line 26
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 27
    .local v0, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v2, "/sys/kernel/fast_charge/force_fast_charge"

    const-string v1, "force_fast_charge"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "1"

    :goto_1
    invoke-static {v2, v1}, Lcom/cyanogenmod/settings/device/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "0"

    goto :goto_1
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 32
    const-string v1, "/sys/kernel/fast_charge/force_fast_charge"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-static {v1, v0}, Lcom/cyanogenmod/settings/device/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x1

    return v0

    .line 32
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method
