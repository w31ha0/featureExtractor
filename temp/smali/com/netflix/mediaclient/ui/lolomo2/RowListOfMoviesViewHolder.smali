.class Lcom/netflix/mediaclient/ui/lolomo2/RowListOfMoviesViewHolder;
.super Lcom/netflix/mediaclient/ui/lolomo2/RowLomoViewHolder;
.source "RowListOfMoviesViewHolder.java"


# instance fields
.field private final mTitle:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/netflix/android/widgetry/lolomo/RowConfig;)V
    .locals 2

    .prologue
    .line 27
    const v0, 0x7f10022c

    invoke-direct {p0, p1, p2, v0}, Lcom/netflix/mediaclient/ui/lolomo2/RowLomoViewHolder;-><init>(Landroid/view/View;Lcom/netflix/android/widgetry/lolomo/RowConfig;I)V

    .line 28
    const v0, 0x7f10022f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowListOfMoviesViewHolder;->mTitle:Landroid/widget/TextView;

    .line 29
    invoke-virtual {p2}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->lightTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowListOfMoviesViewHolder;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0f0091

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setTextViewColor(Landroid/widget/TextView;I)V

    .line 31
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowListOfMoviesViewHolder;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0a0047

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setTextViewSizeByRes(Landroid/widget/TextView;I)V

    .line 32
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowListOfMoviesViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setTextViewToBold(Landroid/widget/TextView;)V

    .line 33
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowListOfMoviesViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->setTextColorIfApplicable(Landroid/widget/TextView;)V

    .line 35
    :cond_0
    return-void
.end method


# virtual methods
.method bindListOfMovies(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/lolomo2/RowListOfMoviesViewHolder;->bind(Ljava/lang/Object;Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;Landroid/os/Parcelable;)V

    .line 47
    invoke-virtual {p2}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;->shouldHideRowIfEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowListOfMoviesViewHolder;->mTitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowListOfMoviesViewHolder;->mTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onBind(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;)V
    .locals 2

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo2/RowLomoViewHolder;->onBind(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;)V

    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowListOfMoviesViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    return-void
.end method

.method public bridge synthetic onBind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo2/RowListOfMoviesViewHolder;->onBind(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;)V

    return-void
.end method
