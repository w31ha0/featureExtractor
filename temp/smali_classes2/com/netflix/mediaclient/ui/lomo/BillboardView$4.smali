.class Lcom/netflix/mediaclient/ui/lomo/BillboardView$4;
.super Ljava/lang/Object;
.source "BillboardView.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper$PlaybackEventsListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V
    .locals 0

    .prologue
    .line 870
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$4;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaybackError(II)V
    .locals 0

    .prologue
    .line 892
    return-void
.end method

.method public onPlaybackFinished()V
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$4;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->access$000(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V

    .line 882
    return-void
.end method

.method public onPlaybackStarted()V
    .locals 0

    .prologue
    .line 874
    return-void
.end method

.method public onPlaybackSuccessfullyCompleted()V
    .locals 0

    .prologue
    .line 887
    return-void
.end method
