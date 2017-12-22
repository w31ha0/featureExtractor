.class public Lcom/netflix/mediaclient/android/fragment/ErrorFrag;
.super Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
.source "ErrorFrag.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;-><init>()V

    return-void
.end method


# virtual methods
.method public isLoadingData()Z
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/netflix/mediaclient/android/fragment/ErrorFrag$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/fragment/ErrorFrag$1;-><init>(Lcom/netflix/mediaclient/android/fragment/ErrorFrag;)V

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/android/fragment/ErrorView;->create(Landroid/view/LayoutInflater;Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
