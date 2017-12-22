.class Lcom/netflix/mediaclient/ui/player/PlayerFragment$2;
.super Ljava/lang/Object;
.source "PlayerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    .prologue
    .line 874
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$2;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 878
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Pause, release awake clock"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$2;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$000(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    .line 880
    return-void
.end method
