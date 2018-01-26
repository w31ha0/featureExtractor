.class public Lcom/biznessapps/layout/adapters/ListItemHolder$YoutubeRssItem;
.super Ljava/lang/Object;
.source "ListItemHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/layout/adapters/ListItemHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "YoutubeRssItem"
.end annotation


# instance fields
.field private countHintTextView:Landroid/widget/TextView;

.field private infoContainer:Landroid/view/ViewGroup;

.field private ratingAverageTextView:Landroid/widget/TextView;

.field private titleView:Landroid/widget/TextView;

.field private viewCountTextView:Landroid/widget/TextView;

.field private youtubeImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCountHintTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$YoutubeRssItem;->countHintTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getInfoContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$YoutubeRssItem;->infoContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getRatingAverageTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$YoutubeRssItem;->ratingAverageTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$YoutubeRssItem;->titleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getViewCountTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$YoutubeRssItem;->viewCountTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getYoutubeImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$YoutubeRssItem;->youtubeImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public setCountHintTextView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "countHintTextView"    # Landroid/widget/TextView;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$YoutubeRssItem;->countHintTextView:Landroid/widget/TextView;

    .line 373
    return-void
.end method

.method public setInfoContainer(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "infoContainer"    # Landroid/view/ViewGroup;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$YoutubeRssItem;->infoContainer:Landroid/view/ViewGroup;

    .line 341
    return-void
.end method

.method public setRatingAverageTextView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "ratingAverageTextView"    # Landroid/widget/TextView;

    .prologue
    .line 380
    iput-object p1, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$YoutubeRssItem;->ratingAverageTextView:Landroid/widget/TextView;

    .line 381
    return-void
.end method

.method public setTitleView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "titleView"    # Landroid/widget/TextView;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$YoutubeRssItem;->titleView:Landroid/widget/TextView;

    .line 357
    return-void
.end method

.method public setViewCountTextView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "viewCountTextView"    # Landroid/widget/TextView;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$YoutubeRssItem;->viewCountTextView:Landroid/widget/TextView;

    .line 365
    return-void
.end method

.method public setYoutubeImageView(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "youtubeImageView"    # Landroid/widget/ImageView;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$YoutubeRssItem;->youtubeImageView:Landroid/widget/ImageView;

    .line 349
    return-void
.end method
