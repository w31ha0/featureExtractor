.class public Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment;
.super Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
.source "ThemeSelectFragment.java"


# instance fields
.field inflater:Landroid/view/LayoutInflater;

.field recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;-><init>()V

    return-void
.end method


# virtual methods
.method public isLoadingData()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 23
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment;->inflater:Landroid/view/LayoutInflater;

    .line 24
    const v0, 0x7f0300ea

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 25
    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 26
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/high16 v2, -0x10000

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setBackgroundColor(I)V

    .line 27
    new-instance v0, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;-><init>(Landroid/view/View;Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;)V

    .line 28
    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->hide(Z)V

    .line 29
    return-object v1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 34
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 35
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment$1;-><init>(Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 66
    return-void
.end method
