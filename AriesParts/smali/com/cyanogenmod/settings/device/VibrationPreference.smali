.class public Lcom/cyanogenmod/settings/device/VibrationPreference;
.super Landroid/preference/DialogPreference;
.source "VibrationPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyanogenmod/settings/device/VibrationPreference$VibrationSeekBar;
    }
.end annotation


# static fields
.field private static final FILE_PATH:Ljava/lang/String; = "/sys/class/vibetonz/immDuty/pwmvalue_intensity"

.field private static final MAX_VALUE:I = 0x7f

.field private static final SEEKBAR_ID:I = 0x7f070006

.field private static final VALUE_DISPLAY_ID:I = 0x7f070005

.field private static sInstances:I


# instance fields
.field private mSeekBar:Lcom/cyanogenmod/settings/device/VibrationPreference$VibrationSeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput v0, Lcom/cyanogenmod/settings/device/VibrationPreference;->sInstances:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    new-instance v0, Lcom/cyanogenmod/settings/device/VibrationPreference$VibrationSeekBar;

    invoke-direct {v0, p0}, Lcom/cyanogenmod/settings/device/VibrationPreference$VibrationSeekBar;-><init>(Lcom/cyanogenmod/settings/device/VibrationPreference;)V

    iput-object v0, p0, Lcom/cyanogenmod/settings/device/VibrationPreference;->mSeekBar:Lcom/cyanogenmod/settings/device/VibrationPreference$VibrationSeekBar;

    .line 35
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/device/VibrationPreference;->setDialogLayoutResource(I)V

    .line 36
    return-void
.end method

.method private SetupButtonClickListener(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 52
    const v2, 0x7f070007

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 53
    .local v1, mTestButton:Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const v2, 0x7f070008

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 56
    .local v0, mResetButton:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method

.method public static isSupported()Z
    .locals 2

    .prologue
    .line 83
    const/4 v0, 0x1

    .line 84
    .local v0, supported:Z
    const-string v1, "/sys/class/vibetonz/immDuty/pwmvalue_intensity"

    invoke-static {v1}, Lcom/cyanogenmod/settings/device/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    const/4 v0, 0x0

    .line 88
    :cond_0
    return v0
.end method

.method public static restore(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 73
    invoke-static {}, Lcom/cyanogenmod/settings/device/VibrationPreference;->isSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 80
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 78
    .local v0, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v2, "/sys/class/vibetonz/immDuty/pwmvalue_intensity"

    const/16 v3, 0x79

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 79
    .local v1, value:I
    const-string v2, "/sys/class/vibetonz/immDuty/pwmvalue_intensity"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cyanogenmod/settings/device/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 42
    sget v2, Lcom/cyanogenmod/settings/device/VibrationPreference;->sInstances:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/cyanogenmod/settings/device/VibrationPreference;->sInstances:I

    .line 44
    const v2, 0x7f070006

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 45
    .local v0, seekBar:Landroid/widget/SeekBar;
    const v2, 0x7f070005

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 46
    .local v1, valueDisplay:Landroid/widget/TextView;
    new-instance v2, Lcom/cyanogenmod/settings/device/VibrationPreference$VibrationSeekBar;

    const-string v3, "/sys/class/vibetonz/immDuty/pwmvalue_intensity"

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/cyanogenmod/settings/device/VibrationPreference$VibrationSeekBar;-><init>(Lcom/cyanogenmod/settings/device/VibrationPreference;Landroid/widget/SeekBar;Landroid/widget/TextView;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/cyanogenmod/settings/device/VibrationPreference;->mSeekBar:Lcom/cyanogenmod/settings/device/VibrationPreference$VibrationSeekBar;

    .line 48
    invoke-direct {p0, p1}, Lcom/cyanogenmod/settings/device/VibrationPreference;->SetupButtonClickListener(Landroid/view/View;)V

    .line 49
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 164
    :goto_0
    return-void

    .line 158
    :pswitch_0
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/device/VibrationPreference;->testVibration()V

    goto :goto_0

    .line 161
    :pswitch_1
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/VibrationPreference;->mSeekBar:Lcom/cyanogenmod/settings/device/VibrationPreference$VibrationSeekBar;

    invoke-virtual {v0}, Lcom/cyanogenmod/settings/device/VibrationPreference$VibrationSeekBar;->resetDefault()V

    goto :goto_0

    .line 156
    :pswitch_data_0
    .packed-switch 0x7f070007
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .parameter "positiveResult"

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 63
    sget v0, Lcom/cyanogenmod/settings/device/VibrationPreference;->sInstances:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/cyanogenmod/settings/device/VibrationPreference;->sInstances:I

    .line 65
    if-eqz p1, :cond_1

    .line 66
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/VibrationPreference;->mSeekBar:Lcom/cyanogenmod/settings/device/VibrationPreference$VibrationSeekBar;

    invoke-virtual {v0}, Lcom/cyanogenmod/settings/device/VibrationPreference$VibrationSeekBar;->save()V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    sget v0, Lcom/cyanogenmod/settings/device/VibrationPreference;->sInstances:I

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/VibrationPreference;->mSeekBar:Lcom/cyanogenmod/settings/device/VibrationPreference$VibrationSeekBar;

    invoke-virtual {v0}, Lcom/cyanogenmod/settings/device/VibrationPreference$VibrationSeekBar;->reset()V

    goto :goto_0
.end method

.method public testVibration()V
    .locals 3

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/device/VibrationPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 168
    .local v0, vib:Landroid/os/Vibrator;
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 169
    return-void
.end method
