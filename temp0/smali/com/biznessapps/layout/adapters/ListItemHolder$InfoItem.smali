.class public Lcom/biznessapps/layout/adapters/ListItemHolder$InfoItem;
.super Ljava/lang/Object;
.source "ListItemHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/layout/adapters/ListItemHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InfoItem"
.end annotation


# instance fields
.field private imageView:Landroid/widget/ImageView;

.field private textViewTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$InfoItem;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTextViewTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$InfoItem;->textViewTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public setImageView(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 467
    iput-object p1, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$InfoItem;->imageView:Landroid/widget/ImageView;

    .line 468
    return-void
.end method

.method public setTextViewTitle(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "textViewTitle"    # Landroid/widget/TextView;

    .prologue
    .line 459
    iput-object p1, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$InfoItem;->textViewTitle:Landroid/widget/TextView;

    .line 460
    return-void
.end method
