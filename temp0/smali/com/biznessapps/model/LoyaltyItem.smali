.class public Lcom/biznessapps/model/LoyaltyItem;
.super Lcom/biznessapps/model/CommonListEntity;
.source "LoyaltyItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;
    }
.end annotation


# instance fields
.field private coupons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/biznessapps/model/CommonListEntity;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public getCoupons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/biznessapps/model/LoyaltyItem;->coupons:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/biznessapps/model/LoyaltyItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/biznessapps/model/LoyaltyItem;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setCoupons(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "coupons":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;>;"
    iput-object p1, p0, Lcom/biznessapps/model/LoyaltyItem;->coupons:Ljava/util/List;

    .line 36
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/biznessapps/model/LoyaltyItem;->id:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/biznessapps/model/LoyaltyItem;->imageUrl:Ljava/lang/String;

    .line 28
    return-void
.end method
