.class public Lcom/cyanogenmod/settings/device/TouchKeyBacklight;
.super Ljava/lang/Object;
.source "TouchKeyBacklight.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field public static final PACKAGE_BLN:Ljava/lang/String; = "neldar.bln.control.free"

.field public static final PACKAGE_BLN_PRO:Ljava/lang/String; = "neldar.bln.control.pro"


# instance fields
.field private mContext:Landroid/preference/PreferenceActivity;


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceActivity;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/cyanogenmod/settings/device/TouchKeyBacklight;->mContext:Landroid/preference/PreferenceActivity;

    .line 43
    return-void
.end method


# virtual methods
.method public isPackageExists(Ljava/lang/String;)Z
    .locals 6
    .parameter "targetPackage"

    .prologue
    const/4 v4, 0x0

    .line 24
    iget-object v5, p0, Lcom/cyanogenmod/settings/device/TouchKeyBacklight;->mContext:Landroid/preference/PreferenceActivity;

    invoke-virtual {v5}, Landroid/preference/PreferenceActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 25
    .local v3, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 26
    .local v2, packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 27
    .local v1, packageInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    .line 29
    .end local v1           #packageInfo:Landroid/content/pm/ApplicationInfo;
    :cond_1
    return v4
.end method

.method public launchPackage(Ljava/lang/String;)V
    .locals 3
    .parameter "targetPackage"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 35
    .local v0, i:Landroid/content/Intent;
    iget-object v2, p0, Lcom/cyanogenmod/settings/device/TouchKeyBacklight;->mContext:Landroid/preference/PreferenceActivity;

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 36
    .local v1, manager:Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 37
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    iget-object v2, p0, Lcom/cyanogenmod/settings/device/TouchKeyBacklight;->mContext:Landroid/preference/PreferenceActivity;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 39
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    .line 47
    const-string v1, "neldar.bln.control.pro"

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/settings/device/TouchKeyBacklight;->isPackageExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    const-string v1, "neldar.bln.control.pro"

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/settings/device/TouchKeyBacklight;->launchPackage(Ljava/lang/String;)V

    .line 56
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 49
    :cond_0
    const-string v1, "neldar.bln.control.free"

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/settings/device/TouchKeyBacklight;->isPackageExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    const-string v1, "neldar.bln.control.free"

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/settings/device/TouchKeyBacklight;->launchPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "market://details?id=neldar.bln.control.free"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 54
    iget-object v1, p0, Lcom/cyanogenmod/settings/device/TouchKeyBacklight;->mContext:Landroid/preference/PreferenceActivity;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
