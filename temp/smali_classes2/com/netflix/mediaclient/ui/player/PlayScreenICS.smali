.class public Lcom/netflix/mediaclient/ui/player/PlayScreenICS;
.super Lcom/netflix/mediaclient/ui/player/PlayScreen;
.source "PlayScreenICS.java"


# static fields
.field private static final BASE_FLAGS:I = 0x4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field private static final HIDE_FLAGS:I = 0x1

.field private static final SHOW_FLAGS:I


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/player/PlayScreen;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;)V

    .line 38
    return-void
.end method


# virtual methods
.method hideNavigationBar()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenICS;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isInPortrait()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenICS;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 70
    :cond_0
    return-void
.end method

.method protected playerOverlayVisibility(Z)V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->playerOverlayVisibility(Z)V

    .line 51
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenICS;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isInPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 55
    :cond_0
    if-eqz p1, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreenICS;->showNavigationBar()V

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreenICS;->hideNavigationBar()V

    goto :goto_0
.end method

.method showNavigationBar()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenICS;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 78
    return-void
.end method
