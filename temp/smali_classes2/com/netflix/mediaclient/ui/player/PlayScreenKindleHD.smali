.class public Lcom/netflix/mediaclient/ui/player/PlayScreenKindleHD;
.super Lcom/netflix/mediaclient/ui/player/PlayScreen;
.source "PlayScreenKindleHD.java"


# static fields
.field public static final AMAZON_FLAGS_HIDE_DRAG_HANDLE:I = 0x2

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
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/player/PlayScreen;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;)V

    .line 37
    return-void
.end method


# virtual methods
.method hideNavigationBar()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenKindleHD;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isInPortrait()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenKindleHD;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 69
    :cond_0
    return-void
.end method

.method protected playerOverlayVisibility(Z)V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->playerOverlayVisibility(Z)V

    .line 50
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenKindleHD;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isInPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 54
    :cond_0
    if-eqz p1, :cond_1

    .line 55
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreenKindleHD;->showNavigationBar()V

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreenKindleHD;->hideNavigationBar()V

    goto :goto_0
.end method

.method showNavigationBar()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenKindleHD;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 77
    return-void
.end method
