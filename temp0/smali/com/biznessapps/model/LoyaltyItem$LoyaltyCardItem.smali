.class public Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;
.super Ljava/lang/Object;
.source "LoyaltyItem.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/model/LoyaltyItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoyaltyCardItem"
.end annotation


# instance fields
.field private couponCode:Ljava/lang/String;

.field private couponId:Ljava/lang/String;

.field private isApproved:Z

.field private isLocked:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;->isLocked:Z

    return-void
.end method


# virtual methods
.method public getCouponCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;->couponCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCouponId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;->couponId:Ljava/lang/String;

    return-object v0
.end method

.method public isApproved()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;->isApproved:Z

    return v0
.end method

.method public isLocked()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;->isLocked:Z

    return v0
.end method

.method public setApproved(Z)V
    .locals 0
    .param p1, "isApproved"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;->isApproved:Z

    .line 61
    return-void
.end method

.method public setCouponCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "couponCode"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;->couponCode:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setCouponId(Ljava/lang/String;)V
    .locals 0
    .param p1, "couponId"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;->couponId:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setLocked(Z)V
    .locals 0
    .param p1, "isLocked"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;->isLocked:Z

    .line 55
    return-void
.end method
