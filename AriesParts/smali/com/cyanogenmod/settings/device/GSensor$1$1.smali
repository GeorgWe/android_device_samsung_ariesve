.class Lcom/cyanogenmod/settings/device/GSensor$1$1;
.super Ljava/lang/Object;
.source "GSensor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/settings/device/GSensor$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cyanogenmod/settings/device/GSensor$1;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/device/GSensor$1;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/cyanogenmod/settings/device/GSensor$1$1;->this$1:Lcom/cyanogenmod/settings/device/GSensor$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/GSensor$1$1;->this$1:Lcom/cyanogenmod/settings/device/GSensor$1;

    iget-object v0, v0, Lcom/cyanogenmod/settings/device/GSensor$1;->this$0:Lcom/cyanogenmod/settings/device/GSensor;

    #getter for: Lcom/cyanogenmod/settings/device/GSensor;->calibrateButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/cyanogenmod/settings/device/GSensor;->access$000(Lcom/cyanogenmod/settings/device/GSensor;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f06000f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 40
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/GSensor$1$1;->this$1:Lcom/cyanogenmod/settings/device/GSensor$1;

    iget-object v0, v0, Lcom/cyanogenmod/settings/device/GSensor$1;->this$0:Lcom/cyanogenmod/settings/device/GSensor;

    #getter for: Lcom/cyanogenmod/settings/device/GSensor;->calibrateButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/cyanogenmod/settings/device/GSensor;->access$000(Lcom/cyanogenmod/settings/device/GSensor;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 41
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/GSensor$1$1;->this$1:Lcom/cyanogenmod/settings/device/GSensor$1;

    iget-object v0, v0, Lcom/cyanogenmod/settings/device/GSensor$1;->this$0:Lcom/cyanogenmod/settings/device/GSensor;

    #calls: Lcom/cyanogenmod/settings/device/GSensor;->showToast()V
    invoke-static {v0}, Lcom/cyanogenmod/settings/device/GSensor;->access$100(Lcom/cyanogenmod/settings/device/GSensor;)V

    .line 42
    return-void
.end method
