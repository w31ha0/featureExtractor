.class public abstract Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
.super Landroid/app/Fragment;
.source "NetflixFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/app/LoadingStatus;
.implements Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
.implements Lcom/netflix/mediaclient/servicemgr/TTIListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "NetflixFrag"


# instance fields
.field private isDestroyed:Z

.field protected mLoadingStatusCallback:Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-object v0
.end method

.method public getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getServiceManager(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    return-object v0
.end method

.method protected isDestroyed()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->isDestroyed:Z

    return v0
.end method

.method public isFragmentValid()Z
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 66
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 37
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->isDestroyed:Z

    .line 85
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 74
    return-void
.end method

.method protected onLoaded(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->mLoadingStatusCallback:Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->mLoadingStatusCallback:Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;->onDataLoaded(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 122
    :cond_0
    return-void
.end method

.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public onTTIComplete(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public setLoadingStatusCallback(Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;)V
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->isLoadingData()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 109
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;->onDataLoaded(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->mLoadingStatusCallback:Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;

    goto :goto_0
.end method
