.class public Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartProductItem;
.super Ljava/lang/Object;
.source "ListItemHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/layout/adapters/ListItemHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShoppingCartProductItem"
.end annotation


# instance fields
.field private productNameView:Landroid/widget/TextView;

.field private productPriceView:Landroid/widget/TextView;

.field private smallImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProductNameView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartProductItem;->productNameView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getProductPriceView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartProductItem;->productPriceView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getProductSmallImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartProductItem;->smallImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public setProductNameView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "productNameView"    # Landroid/widget/TextView;

    .prologue
    .line 505
    iput-object p1, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartProductItem;->productNameView:Landroid/widget/TextView;

    .line 506
    return-void
.end method

.method public setProductPriceView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "productPriceView"    # Landroid/widget/TextView;

    .prologue
    .line 519
    iput-object p1, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartProductItem;->productPriceView:Landroid/widget/TextView;

    .line 520
    return-void
.end method

.method public setProductSmallImageView(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "smallimage"    # Landroid/widget/ImageView;

    .prologue
    .line 530
    iput-object p1, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartProductItem;->smallImageView:Landroid/widget/ImageView;

    .line 531
    return-void
.end method
