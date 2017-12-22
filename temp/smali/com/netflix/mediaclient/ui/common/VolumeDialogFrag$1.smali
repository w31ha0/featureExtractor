.class Lcom/netflix/mediaclient/ui/common/VolumeDialogFrag$1;
.super Landroid/content/BroadcastReceiver;
.source "VolumeDialogFrag.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/common/VolumeDialogFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/common/VolumeDialogFrag;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/common/VolumeDialogFrag$1;->this$0:Lcom/netflix/mediaclient/ui/common/VolumeDialogFrag;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 67
    const-string/jumbo v0, "volume"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 68
    if-ltz v0, :cond_0

    .line 69
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/VolumeDialogFrag$1;->this$0:Lcom/netflix/mediaclient/ui/common/VolumeDialogFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/common/VolumeDialogFrag;->access$000(Lcom/netflix/mediaclient/ui/common/VolumeDialogFrag;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 74
    :goto_0
    return-void

    .line 71
    :cond_0
    const-string/jumbo v0, "VolumeDialogFrag"

    const-string/jumbo v1, "Volume value is missed from MDX_SETVOLUME Intent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
