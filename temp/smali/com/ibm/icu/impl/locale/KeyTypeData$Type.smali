.class Lcom/ibm/icu/impl/locale/KeyTypeData$Type;
.super Ljava/lang/Object;
.source "KeyTypeData.java"


# instance fields
.field bcpId:Ljava/lang/String;

.field legacyId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/ibm/icu/impl/locale/KeyTypeData$Type;->legacyId:Ljava/lang/String;

    .line 117
    iput-object p2, p0, Lcom/ibm/icu/impl/locale/KeyTypeData$Type;->bcpId:Ljava/lang/String;

    .line 118
    return-void
.end method
