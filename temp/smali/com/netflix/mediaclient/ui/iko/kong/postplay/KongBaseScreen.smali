.class public abstract Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBaseScreen;
.super Ljava/lang/Object;
.source "KongBaseScreen.java"


# instance fields
.field protected handler:Landroid/os/Handler;

.field protected playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

.field protected postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBaseScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    .line 20
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBaseScreen;->getPlayerFragment()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBaseScreen;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    .line 21
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBaseScreen;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBaseScreen;->handler:Landroid/os/Handler;

    .line 22
    return-void
.end method


# virtual methods
.method protected getActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBaseScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    return-object v0
.end method

.method protected getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBaseScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method protected getPlayerFragment()Lcom/netflix/mediaclient/ui/player/PlayerFragment;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBaseScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getPlayerFragment()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    return-object v0
.end method

.method abstract hide()V
.end method

.method abstract initViews(Landroid/view/View;)V
.end method

.method abstract loadPostPlayData(Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;)V
.end method

.method abstract loadResources()V
.end method

.method abstract onResourcesLoaded()V
.end method

.method public abstract releaseBitmapResources()V
.end method

.method abstract start()V
.end method
