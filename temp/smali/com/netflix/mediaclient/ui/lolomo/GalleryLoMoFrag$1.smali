.class Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$1;
.super Landroid/content/BroadcastReceiver;
.source "GalleryLoMoFrag.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->refresh()V

    .line 116
    :cond_0
    return-void
.end method
