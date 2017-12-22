.class Lcom/netflix/mediaclient/ui/player/TopPanel$5;
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
    .line 287
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$5;->this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 290
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$5;->this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/player/TopPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "ui.playeroverlay"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 291
    if-eqz v2, :cond_1

    .line 292
    const-string/jumbo v3, "screen"

    const-string/jumbo v4, "Disable debug metadata on player UI"

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :goto_0
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$5;->this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/player/TopPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "ui.playeroverlay"

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v3, v4, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 297
    return v1

    .line 294
    :cond_1
    const-string/jumbo v3, "screen"

    const-string/jumbo v4, "Enable debug metadata on `player UI"

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
