.class final Lcom/ibm/icu/util/STZInfo;
.super Ljava/lang/Object;
.source "STZInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field em:I

.field sm:I

.field sy:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput v0, p0, Lcom/ibm/icu/util/STZInfo;->sy:I

    .line 82
    iput v0, p0, Lcom/ibm/icu/util/STZInfo;->sm:I

    .line 84
    iput v0, p0, Lcom/ibm/icu/util/STZInfo;->em:I

    return-void
.end method
