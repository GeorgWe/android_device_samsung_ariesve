.class Lcom/cyanogenmod/settings/device/GSensor$1;
.super Ljava/lang/Object;
.source "GSensor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settings/device/GSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/device/GSensor;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/device/GSensor;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/cyanogenmod/settings/device/GSensor$1;->this$0:Lcom/cyanogenmod/settings/device/GSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 36
    const-string v0, "/sys/class/input/input6/calibration"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/cyanogenmod/settings/device/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/GSensor$1;->this$0:Lcom/cyanogenmod/settings/device/GSensor;

    new-instance v1, Lcom/cyanogenmod/settings/device/GSensor$1$1;

    invoke-direct {v1, p0}, Lcom/cyanogenmod/settings/device/GSensor$1$1;-><init>(Lcom/cyanogenmod/settings/device/GSensor$1;)V

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/device/GSensor;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 45
    return-void
.end method
