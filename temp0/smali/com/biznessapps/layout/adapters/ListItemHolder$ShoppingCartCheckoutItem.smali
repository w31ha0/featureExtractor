.class public Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartCheckoutItem;
.super Ljava/lang/Object;
.source "ListItemHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/layout/adapters/ListItemHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShoppingCartCheckoutItem"
.end annotation


# instance fields
.field private productImageView:Landroid/widget/ImageView;

.field private productNameView:Landroid/widget/TextView;

.field private productPriceView:Landroid/widget/TextView;

.field private quantityView:Landroid/widget/EditText;

.field private removeButton:Landroid/widget/Button;

.field private updateButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProductImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartCheckoutItem;->productImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getProductNameView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartCheckoutItem;->productNameView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getProductPriceView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartCheckoutItem;->productPriceView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getQuantityView()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartCheckoutItem;->quantityView:Landroid/widget/EditText;

    return-object v0
.end method

.method public getRemoveButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartCheckoutItem;->removeButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getUpdateButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartCheckoutItem;->updateButton:Landroid/widget/Button;

    return-object v0
.end method

.method public setProductNameView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "productNameView"    # Landroid/widget/TextView;

    .prologue
    .line 560
    iput-object p1, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartCheckoutItem;->productNameView:Landroid/widget/TextView;

    .line 561
    return-void
.end method

.method public setProductPriceView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "productPriceView"    # Landroid/widget/TextView;

    .prologue
    .line 574
    iput-object p1, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartCheckoutItem;->productPriceView:Landroid/widget/TextView;

    .line 575
    return-void
.end method

.method public setQuantityView(Landroid/widget/EditText;)V
    .locals 0
    .param p1, "quantityView"    # Landroid/widget/EditText;

    .prologue
    .line 602
    iput-object p1, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartCheckoutItem;->quantityView:Landroid/widget/EditText;

    .line 603
    return-void
.end method

.method public setRemoveButton(Landroid/widget/Button;)V
    .locals 0
    .param p1, "removeButton"    # Landroid/widget/Button;

    .prologue
    .line 630
    iput-object p1, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartCheckoutItem;->removeButton:Landroid/widget/Button;

    .line 631
    return-void
.end method

.method public setSmallImageView(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "smallImageView"    # Landroid/widget/ImageView;

    .prologue
    .line 588
    iput-object p1, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartCheckoutItem;->productImageView:Landroid/widget/ImageView;

    .line 589
    return-void
.end method

.method public setUpdateButton(Landroid/widget/Button;)V
    .locals 0
    .param p1, "updateButton"    # Landroid/widget/Button;

    .prologue
    .line 616
    iput-object p1, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartCheckoutItem;->updateButton:Landroid/widget/Button;

    .line 617
    return-void
.end method
