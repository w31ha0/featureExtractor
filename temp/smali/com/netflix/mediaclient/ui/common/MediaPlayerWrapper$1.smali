.class Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper$1;
.super Ljava/lang/Object;
.source "MediaPlayerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper$1;->this$0:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper$1;->this$0:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->access$000(Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;)V

    .line 319
    return-void
.end method
