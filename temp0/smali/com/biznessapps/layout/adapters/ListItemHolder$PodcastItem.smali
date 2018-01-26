.class public Lcom/biznessapps/layout/adapters/ListItemHolder$PodcastItem;
.super Ljava/lang/Object;
.source "ListItemHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/layout/adapters/ListItemHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PodcastItem"
.end annotation


# instance fields
.field private podcastImageView:Landroid/widget/ImageView;

.field private subtitleTextView:Landroid/widget/TextView;

.field private summaryTextView:Landroid/widget/TextView;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPodcastImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$PodcastItem;->podcastImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSubtitleTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$PodcastItem;->subtitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSummaryTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$PodcastItem;->summaryTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$PodcastItem;->titleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public setPodcastImageView(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "podcastImageView"    # Landroid/widget/ImageView;

    .prologue
    .line 398
    iput-object p1, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$PodcastItem;->podcastImageView:Landroid/widget/ImageView;

    .line 399
    return-void
.end method

.method public setSubtitleTextView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "subtitleTextView"    # Landroid/widget/TextView;

    .prologue
    .line 422
    iput-object p1, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$PodcastItem;->subtitleTextView:Landroid/widget/TextView;

    .line 423
    return-void
.end method

.method public setSummaryTextView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "summaryTextView"    # Landroid/widget/TextView;

    .prologue
    .line 414
    iput-object p1, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$PodcastItem;->summaryTextView:Landroid/widget/TextView;

    .line 415
    return-void
.end method

.method public setTitleView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "titleView"    # Landroid/widget/TextView;

    .prologue
    .line 406
    iput-object p1, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$PodcastItem;->titleView:Landroid/widget/TextView;

    .line 407
    return-void
.end method
