.class public Lcom/biznessapps/fragments/shoppingcart/entities/Product;
.super Lcom/biznessapps/model/CommonListEntity;
.source "Product.java"


# instance fields
.field private imageUrl:Ljava/lang/String;

.field private productCode:Ljava/lang/String;

.field private productDescription:Ljava/lang/String;

.field private productName:Ljava/lang/String;

.field private productPrice:F

.field private smallImageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/biznessapps/model/CommonListEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getProductCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->productCode:Ljava/lang/String;

    return-object v0
.end method

.method public getProductDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->productDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public getProductPrice()F
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->productPrice:F

    return v0
.end method

.method public getSmallImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->smallImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->imageUrl:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setProductCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "productCode"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->productCode:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setProductDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "productDescription"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->productDescription:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0
    .param p1, "productName"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->productName:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setProductPrice(F)V
    .locals 0
    .param p1, "productPrice"    # F

    .prologue
    .line 24
    iput p1, p0, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->productPrice:F

    .line 25
    return-void
.end method

.method public setSmallImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "smallImageUrl"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->smallImageUrl:Ljava/lang/String;

    .line 88
    return-void
.end method
