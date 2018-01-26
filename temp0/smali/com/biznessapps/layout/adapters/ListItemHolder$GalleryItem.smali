.class public Lcom/biznessapps/layout/adapters/ListItemHolder$GalleryItem;
.super Ljava/lang/Object;
.source "ListItemHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/layout/adapters/ListItemHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GalleryItem"
.end annotation


# instance fields
.field private image:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImage()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$GalleryItem;->image:Landroid/widget/ImageView;

    return-object v0
.end method

.method public setImage(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "image"    # Landroid/widget/ImageView;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$GalleryItem;->image:Landroid/widget/ImageView;

    .line 237
    return-void
.end method
