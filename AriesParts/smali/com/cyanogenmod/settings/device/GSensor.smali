.class public Lcom/cyanogenmod/settings/device/GSensor;
.super Landroid/app/Activity;
.source "GSensor.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final FILE:Ljava/lang/String; = "/sys/class/input/input6/calibration"

.field private static final TAG:Ljava/lang/String; = "GSensor"


# instance fields
.field private calibrateButton:Landroid/widget/Button;

.field private handler:Landroid/os/Handler;

.field private runnable:Ljava/lang/Runnable;

.field private sm:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyanogenmod/settings/device/GSensor;->sm:Landroid/hardware/SensorManager;

    .line 34
    new-instance v0, Lcom/cyanogenmod/settings/device/GSensor$1;

    invoke-direct {v0, p0}, Lcom/cyanogenmod/settings/device/GSensor$1;-><init>(Lcom/cyanogenmod/settings/device/GSensor;)V

    iput-object v0, p0, Lcom/cyanogenmod/settings/device/GSensor;->runnable:Ljava/lang/Runnable;

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cyanogenmod/settings/device/GSensor;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/cyanogenmod/settings/device/GSensor;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/GSensor;->calibrateButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cyanogenmod/settings/device/GSensor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/cyanogenmod/settings/device/GSensor;->showToast()V

    return-void
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    .line 24
    const-string v0, "/sys/class/input/input6/calibration"

    invoke-static {v0}, Lcom/cyanogenmod/settings/device/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private showToast()V
    .locals 2

    .prologue
    .line 80
    const v0, 0x7f06000e

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/device/GSensor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 81
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 5
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 90
    const-string v0, "GSensor"

    const-string v1, "onAccuracyChanged: %s, accuracy: %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/hardware/Sensor;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/device/GSensor;->setContentView(I)V

    .line 55
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/device/GSensor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/cyanogenmod/settings/device/GSensor;->sm:Landroid/hardware/SensorManager;

    .line 56
    const v0, 0x7f070003

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/device/GSensor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cyanogenmod/settings/device/GSensor;->calibrateButton:Landroid/widget/Button;

    .line 57
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/GSensor;->calibrateButton:Landroid/widget/Button;

    new-instance v1, Lcom/cyanogenmod/settings/device/GSensor$2;

    invoke-direct {v1, p0}, Lcom/cyanogenmod/settings/device/GSensor$2;-><init>(Lcom/cyanogenmod/settings/device/GSensor;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 66
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 67
    iget-object v1, p0, Lcom/cyanogenmod/settings/device/GSensor;->sm:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 68
    .local v0, Accel:Landroid/hardware/Sensor;
    iget-object v1, p0, Lcom/cyanogenmod/settings/device/GSensor;->sm:Landroid/hardware/SensorManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 69
    iget-object v1, p0, Lcom/cyanogenmod/settings/device/GSensor;->calibrateButton:Landroid/widget/Button;

    const v2, 0x7f060010

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 70
    iget-object v1, p0, Lcom/cyanogenmod/settings/device/GSensor;->calibrateButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 71
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 84
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 85
    .local v0, sensor:Landroid/hardware/Sensor;
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 86
    .local v1, values:[F
    const-string v2, "GSensor"

    const-string v3, "onSensorChanged: %s, values: %f %f %f"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    aget v5, v1, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v7

    aget v5, v1, v7

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x3

    aget v6, v1, v8

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/GSensor;->sm:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 76
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 77
    return-void
.end method

.method public startCalibration()V
    .locals 2

    .prologue
    .line 28
    invoke-static {}, Lcom/cyanogenmod/settings/device/GSensor;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    :goto_0
    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/GSensor;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cyanogenmod/settings/device/GSensor;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
