.class public Lcom/cyanogenmod/settings/device/Startup;
.super Landroid/content/BroadcastReceiver;
.source "Startup.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "bootintent"

    .prologue
    .line 11
    invoke-static {p1}, Lcom/cyanogenmod/settings/device/TouchKeyBacklightTimeout;->restore(Landroid/content/Context;)V

    .line 12
    invoke-static {p1}, Lcom/cyanogenmod/settings/device/TouchLightStatus;->restore(Landroid/content/Context;)V

    .line 13
    invoke-static {p1}, Lcom/cyanogenmod/settings/device/FastCharge;->restore(Landroid/content/Context;)V

    .line 14
    invoke-static {p1}, Lcom/cyanogenmod/settings/device/VibrationPreference;->restore(Landroid/content/Context;)V

    .line 15
    return-void
.end method
