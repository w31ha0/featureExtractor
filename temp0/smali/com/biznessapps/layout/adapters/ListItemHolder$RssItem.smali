.class public Lcom/biznessapps/layout/adapters/ListItemHolder$RssItem;
.super Ljava/lang/Object;
.source "ListItemHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/layout/adapters/ListItemHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RssItem"
.end annotation


# instance fields
.field private imageView:Landroid/widget/ImageView;

.field private textViewDate:Landroid/widget/TextView;

.field private textViewSummary:Landroid/widget/TextView;

.field private textViewTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$RssItem;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTextViewDate()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$RssItem;->textViewDate:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTextViewSummary()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$RssItem;->textViewSummary:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTextViewTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$RssItem;->textViewTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public setImageView(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$RssItem;->imageView:Landroid/widget/ImageView;

    .line 87
    return-void
.end method

.method public setTextViewDate(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "textViewDate"    # Landroid/widget/TextView;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$RssItem;->textViewDate:Landroid/widget/TextView;

    .line 79
    return-void
.end method

.method public setTextViewSummary(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "textViewSummary"    # Landroid/widget/TextView;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$RssItem;->textViewSummary:Landroid/widget/TextView;

    .line 103
    return-void
.end method

.method public setTextViewTitle(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "textViewTitle"    # Landroid/widget/TextView;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$RssItem;->textViewTitle:Landroid/widget/TextView;

    .line 95
    return-void
.end method
