.class public Lcom/netflix/mediaclient/ui/player/PlayScreenJB;
.super Lcom/netflix/mediaclient/ui/player/PlayScreen;
.source "PlayScreenJB.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final BASE_FLAGS:I = 0x700

.field private static final HIDE_FLAGS:I = 0x3

.field private static final SHOW_FLAGS:I


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/player/PlayScreen;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;)V

    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenJB;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isInPortrait()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 44
    :cond_0
    return-void
.end method


# virtual methods
.method hideNavigationBar()V
    .locals 2

    .prologue
    .line 70
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "hide nav JB"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenJB;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x703

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 72
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreenJB;->hideQuickActions()V

    .line 73
    return-void
.end method

.method protected playerOverlayVisibility(Z)V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->playerOverlayVisibility(Z)V

    .line 57
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenJB;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isInPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 61
    :cond_0
    if-eqz p1, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreenJB;->showNavigationBar()V

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreenJB;->hideNavigationBar()V

    goto :goto_0
.end method

.method showNavigationBar()V
    .locals 2

    .prologue
    .line 77
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "show nav JB"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenJB;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 79
    return-void
.end method
