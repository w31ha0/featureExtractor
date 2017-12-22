.class Lcom/netflix/mediaclient/ui/player/TopPanel$6;
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
    .line 304
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$6;->this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 307
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$6;->this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/player/TopPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "ui.playergraphicref"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 308
    if-eqz v2, :cond_2

    .line 309
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$6;->this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/player/TopPanel;->access$400(Lcom/netflix/mediaclient/ui/player/TopPanel;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 310
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$6;->this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/player/TopPanel;->access$400(Lcom/netflix/mediaclient/ui/player/TopPanel;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setDebugGraphicOverlayVisibility(Z)V

    .line 312
    :cond_0
    const-string/jumbo v3, "screen"

    const-string/jumbo v4, "Disable debug graphics on player UI"

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :goto_0
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$6;->this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/player/TopPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "ui.playergraphicref"

    if-nez v2, :cond_1

    move v0, v1

    :cond_1
    invoke-static {v3, v4, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 320
    return v1

    .line 314
    :cond_2
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$6;->this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/player/TopPanel;->access$400(Lcom/netflix/mediaclient/ui/player/TopPanel;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 315
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$6;->this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/player/TopPanel;->access$400(Lcom/netflix/mediaclient/ui/player/TopPanel;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setDebugGraphicOverlayVisibility(Z)V

    .line 317
    :cond_3
    const-string/jumbo v3, "screen"

    const-string/jumbo v4, "Enable debug graphics on `player UI"

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
