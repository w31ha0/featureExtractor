.class public Lcom/netflix/mediaclient/ui/player/PlayScreenKindleFire;
.super Lcom/netflix/mediaclient/ui/player/PlayScreen;
.source "PlayScreenKindleFire.java"


# static fields
.field public static final AMAZON_FLAG_NOSOFTKEYS:I = -0x80000000

.field private static final FLAG_SUPER_FULLSCREEN:I = -0x7ffffc00


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/player/PlayScreen;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;)V

    .line 24
    return-void
.end method


# virtual methods
.method hideNavigationBar()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenKindleFire;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isInPortrait()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenKindleFire;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, -0x7ffffc00

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 56
    :cond_0
    return-void
.end method

.method protected playerOverlayVisibility(Z)V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->playerOverlayVisibility(Z)V

    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenKindleFire;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isInPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 41
    :cond_0
    if-eqz p1, :cond_1

    .line 42
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreenKindleFire;->showNavigationBar()V

    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreenKindleFire;->hideNavigationBar()V

    goto :goto_0
.end method

.method showNavigationBar()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenKindleFire;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, -0x7ffffc00

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 64
    return-void
.end method
