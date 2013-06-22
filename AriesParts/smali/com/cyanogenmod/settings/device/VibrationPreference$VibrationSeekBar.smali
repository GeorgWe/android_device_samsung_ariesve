.class Lcom/cyanogenmod/settings/device/VibrationPreference$VibrationSeekBar;
.super Ljava/lang/Object;
.source "VibrationPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settings/device/VibrationPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VibrationSeekBar"
.end annotation


# instance fields
.field protected mFilePath:Ljava/lang/String;

.field protected mOriginal:I

.field protected mSeekBar:Landroid/widget/SeekBar;

.field protected mValueDisplay:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/cyanogenmod/settings/device/VibrationPreference;


# direct methods
.method protected constructor <init>(Lcom/cyanogenmod/settings/device/VibrationPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/cyanogenmod/settings/device/VibrationPreference$VibrationSeekBar;->this$0:Lcom/cyanogenmod/settings/device/VibrationPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    return-void
.end method

.method public constructor <init>(Lcom/cyanogenmod/settings/device/VibrationPreference;Landroid/widget/SeekBar;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "seekBar"
    .parameter "valueDisplay"
    .parameter "filePath"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/cyanogenmod/settings/device/VibrationPreference$VibrationSeekBar;->this$0:Lcom/cyanogenmod/settings/device/VibrationPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p2, p0, Lcom/cyanogenmod/settings/device/VibrationPreference$VibrationSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    .line 100
    iput-object p3, p0, Lcom/cyanogenmod/settings/device/VibrationPreference$VibrationSeekBar;->mValueDisplay:Landroid/widget/TextView;

    .line 101
    iput-object p4, p0, Lcom/cyanogenmod/settings/device/VibrationPreference$VibrationSeekBar;->mFilePath:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Lcom/cyanogenmod/settings/device/VibrationPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 105
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/cyanogenmod/settings/device/VibrationPreference$VibrationSeekBar;->mFilePath:Ljava/lang/String;

    const/16 v2, 0x79

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/cyanogenmod/settings/device/VibrationPreference$VibrationSeekBar;->mOriginal:I

    .line 107
    const/16 v1, 0x7f

    invoke-virtual {p2, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 108
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/device/VibrationPreference$VibrationSeekBar;->reset()V

    .line 109
    invoke-virtual {p2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 110
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/VibrationPreference$VibrationSeekBar;->mFilePath:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyanogenmod/settings/device/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0, p2}, Lcom/cyanogenmod/settings/device/VibrationPreference$VibrationSeekBar;->updateValue(I)V

    .line 132
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 137
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 142
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/VibrationPreference$VibrationSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/cyanogenmod/settings/device/VibrationPreference$VibrationSeekBar;->mOriginal:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 118
    iget v0, p0, Lcom/cyanogenmod/settings/device/VibrationPreference$VibrationSeekBar;->mOriginal:I

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/device/VibrationPreference$VibrationSeekBar;->updateValue(I)V

    .line 119
    return-void
.end method

.method public resetDefault()V
    .locals 2

    .prologue
    const/16 v1, 0x79

    .line 149
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/VibrationPreference$VibrationSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 150
    invoke-virtual {p0, v1}, Lcom/cyanogenmod/settings/device/VibrationPreference$VibrationSeekBar;->updateValue(I)V

    .line 151
    const-string v0, "/sys/class/vibetonz/immDuty/pwmvalue_intensity"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyanogenmod/settings/device/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public save()V
    .locals 3

    .prologue
    .line 122
    iget-object v1, p0, Lcom/cyanogenmod/settings/device/VibrationPreference$VibrationSeekBar;->this$0:Lcom/cyanogenmod/settings/device/VibrationPreference;

    invoke-virtual {v1}, Lcom/cyanogenmod/settings/device/VibrationPreference;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 123
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/cyanogenmod/settings/device/VibrationPreference$VibrationSeekBar;->mFilePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/cyanogenmod/settings/device/VibrationPreference$VibrationSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 124
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 125
    return-void
.end method

.method protected updateValue(I)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/VibrationPreference$VibrationSeekBar;->mValueDisplay:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    return-void
.end method
