.class Lcom/netflix/mediaclient/ui/player/TopPanel$4;
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
    .line 263
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$4;->this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 266
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "Display language dialog"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$4;->this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/TopPanel;->access$200(Lcom/netflix/mediaclient/ui/player/TopPanel;)V

    .line 268
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$4;->this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/TopPanel;->access$300(Lcom/netflix/mediaclient/ui/player/TopPanel;)Lcom/netflix/mediaclient/ui/common/LanguageSelector;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$4;->this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/player/TopPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getLanguage()Lcom/netflix/mediaclient/media/Language;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/common/LanguageSelector;->display(Lcom/netflix/mediaclient/media/Language;)V

    .line 269
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$4;->this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/TopPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->stopScreenUpdateTask()V

    .line 270
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$4;->this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$4;->this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/player/TopPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->audioSubtitlesSelector:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->reportUiModelessViewSessionStart(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/player/TopPanel;->access$002(Lcom/netflix/mediaclient/ui/player/TopPanel;Ljava/lang/String;)Ljava/lang/String;

    .line 271
    const/4 v0, 0x1

    return v0
.end method
