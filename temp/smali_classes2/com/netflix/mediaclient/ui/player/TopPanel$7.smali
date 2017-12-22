.class Lcom/netflix/mediaclient/ui/player/TopPanel$7;
.super Ljava/lang/Object;
.source "TopPanel.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/TopPanel;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$7;->this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$7;->this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/TopPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/BitrateControl;->showBitrateController(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    .line 331
    const/4 v0, 0x0

    return v0
.end method
