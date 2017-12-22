.class Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator$1;
.super Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;
.source "InteractiveMomentsDecorator.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator$1;->this$0:Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onInteractiveMomentsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/InteractiveMoments;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 109
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;->onInteractiveMomentsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/InteractiveMoments;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 110
    if-eqz p1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator$1;->this$0:Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/InteractiveMoments;->getInteractiveMoments()Lcom/netflix/model/leafs/InteractivePlaybackMoments;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->access$000(Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;Lcom/netflix/model/leafs/InteractivePlaybackMoments;)V

    .line 113
    :cond_0
    return-void
.end method
