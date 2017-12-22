.class Lcom/netflix/mediaclient/ui/player/TopPanel$1;
.super Ljava/lang/Object;
.source "TopPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/TopPanel;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$1;->this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$1;->this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/TopPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->performUpAction()V

    .line 154
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$1;->this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/TopPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V

    .line 155
    return-void
.end method
