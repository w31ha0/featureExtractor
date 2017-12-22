.class public Lcom/netflix/mediaclient/android/fragment/LoadingFrag;
.super Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
.source "LoadingFrag.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;-><init>()V

    return-void
.end method


# virtual methods
.method public isLoadingData()Z
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 12
    new-instance v0, Lcom/netflix/mediaclient/android/fragment/LoadingView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/fragment/LoadingFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/fragment/LoadingView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
