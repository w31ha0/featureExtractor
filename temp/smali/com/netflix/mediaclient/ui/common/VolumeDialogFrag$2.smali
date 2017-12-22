.class Lcom/netflix/mediaclient/ui/common/VolumeDialogFrag$2;
.super Ljava/lang/Object;
.source "VolumeDialogFrag.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/common/VolumeDialogFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/common/VolumeDialogFrag;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/common/VolumeDialogFrag$2;->this$0:Lcom/netflix/mediaclient/ui/common/VolumeDialogFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/VolumeDialogFrag$2;->this$0:Lcom/netflix/mediaclient/ui/common/VolumeDialogFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/common/VolumeDialogFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/VolumeDialogFrag$2;->this$0:Lcom/netflix/mediaclient/ui/common/VolumeDialogFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/common/VolumeDialogFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0, p3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 85
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
