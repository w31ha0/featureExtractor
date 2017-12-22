.class Lcom/netflix/mediaclient/ui/player/TopPanel$11;
.super Ljava/lang/Object;
.source "TopPanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

.field final synthetic val$controller:Lcom/netflix/mediaclient/ui/player/PlayerFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/TopPanel;Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$11;->this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$11;->val$controller:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 480
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "Mdx::onCancel"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$11;->val$controller:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doUnpause()V

    .line 482
    return-void
.end method
