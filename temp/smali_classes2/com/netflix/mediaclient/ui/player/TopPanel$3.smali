.class Lcom/netflix/mediaclient/ui/player/TopPanel$3;
.super Ljava/lang/Object;
.source "TopPanel.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/TopPanel;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$3;->this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public languageChanged(Lcom/netflix/mediaclient/media/Language;Z)V
    .locals 3

    .prologue
    .line 241
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "Language changed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$3;->this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/player/TopPanel;->access$100(Lcom/netflix/mediaclient/ui/player/TopPanel;Lcom/netflix/mediaclient/media/Language;)V

    .line 243
    if-eqz p2, :cond_0

    .line 244
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$3;->this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/TopPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doUnpause()V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$3;->this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/TopPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->startScreenUpdateTask()V

    .line 247
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$3;->this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/TopPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->audioSubtitlesSelector:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$3;->this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/player/TopPanel;->access$000(Lcom/netflix/mediaclient/ui/player/TopPanel;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->reportUiModelessViewSessionEnded(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public updateDialog(Landroid/app/Dialog;)V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$3;->this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/TopPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->updateVisibleDialog(Landroid/app/Dialog;)V

    .line 237
    return-void
.end method

.method public userCanceled()V
    .locals 3

    .prologue
    .line 228
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "User canceled selection"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$3;->this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/TopPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doUnpause()V

    .line 230
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$3;->this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/TopPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->startScreenUpdateTask()V

    .line 231
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$3;->this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/TopPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->audioSubtitlesSelector:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$3;->this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/player/TopPanel;->access$000(Lcom/netflix/mediaclient/ui/player/TopPanel;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->reportUiModelessViewSessionEnded(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public wasPlaying()Z
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$3;->this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/TopPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPlayer()Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method
