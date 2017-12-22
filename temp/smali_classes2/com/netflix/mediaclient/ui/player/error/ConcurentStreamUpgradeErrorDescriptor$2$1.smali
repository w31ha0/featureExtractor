.class Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor$2$1;
.super Ljava/lang/Object;
.source "ConcurentStreamUpgradeErrorDescriptor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor$2;

.field final synthetic val$urlLink:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor$2;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor$2$1;->this$0:Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor$2;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor$2$1;->val$urlLink:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 214
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor$2$1;->this$0:Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor$2;->val$fragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor$2$1;->val$urlLink:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->startActivity(Landroid/content/Intent;)V

    .line 216
    const-string/jumbo v0, "nf_play_error"

    const-string/jumbo v1, "Exit from playback after browser is started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor$2$1;->this$0:Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor$2;->val$fragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->finish()V

    .line 219
    return-void
.end method
