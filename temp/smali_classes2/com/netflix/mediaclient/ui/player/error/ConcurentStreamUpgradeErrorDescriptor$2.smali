.class final Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor$2;
.super Ljava/lang/Object;
.source "ConcurentStreamUpgradeErrorDescriptor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$fragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

.field final synthetic val$link:Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor$LinkTag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor$LinkTag;Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor$2;->val$link:Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor$LinkTag;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor$2;->val$fragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 197
    const-string/jumbo v0, "http://www.netflix.com"

    .line 198
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor$2;->val$link:Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor$LinkTag;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor$LinkTag;->href:Ljava/lang/String;

    invoke-static {}, Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor;->access$000()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor$2;->val$link:Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor$LinkTag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor$LinkTag;->href:Ljava/lang/String;

    .line 205
    :goto_0
    const-string/jumbo v1, "nf_play_error"

    const-string/jumbo v2, "Launch browser"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor$2;->val$fragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    new-instance v2, Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor$2$1;

    invoke-direct {v2, p0, v0}, Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor$2$1;-><init>(Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor$2;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 221
    return-void

    .line 201
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor$2;->val$link:Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor$LinkTag;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor$LinkTag;->href:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
