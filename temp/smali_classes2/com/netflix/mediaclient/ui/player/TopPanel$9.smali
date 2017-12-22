.class Lcom/netflix/mediaclient/ui/player/TopPanel$9;
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
    .line 360
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$9;->this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$9;->this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/TopPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isFragmentValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$9;->this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/TopPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->extendTimeoutTimer()V

    .line 365
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$9;->this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/TopPanel;->displayMdxTargets()V

    .line 367
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
