.class public Lcom/biznessapps/fragments/shoppingcart/entities/Category;
.super Lcom/biznessapps/model/CommonListEntity;
.source "Category.java"


# instance fields
.field private catId:Ljava/lang/String;

.field private catName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/biznessapps/model/CommonListEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getCatId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/entities/Category;->catId:Ljava/lang/String;

    return-object v0
.end method

.method public getCatName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/entities/Category;->catName:Ljava/lang/String;

    return-object v0
.end method

.method public setCatId(Ljava/lang/String;)V
    .locals 0
    .param p1, "catId"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/biznessapps/fragments/shoppingcart/entities/Category;->catId:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setCatName(Ljava/lang/String;)V
    .locals 0
    .param p1, "catName"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/biznessapps/fragments/shoppingcart/entities/Category;->catName:Ljava/lang/String;

    .line 18
    return-void
.end method
