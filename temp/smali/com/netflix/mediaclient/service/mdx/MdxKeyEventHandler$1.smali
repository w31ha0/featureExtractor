.class Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler$1;
.super Ljava/lang/Object;
.source "MdxKeyEventHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler;

.field final synthetic val$player:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler;Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler$1;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler$1;->val$player:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler$1;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler;->access$000(Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler;)Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler$MdxKeyEventCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler$MdxKeyEventCallbacks;->getVolumeAsPercent()I

    move-result v0

    add-int/lit8 v0, v0, -0xa

    .line 66
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler$1;->val$player:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->setVolume(I)V

    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler$1;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler;->access$000(Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler;)Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler$MdxKeyEventCallbacks;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler$1;->val$player:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->getVolume()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler$MdxKeyEventCallbacks;->onVolumeSet(I)V

    .line 68
    return-void
.end method
