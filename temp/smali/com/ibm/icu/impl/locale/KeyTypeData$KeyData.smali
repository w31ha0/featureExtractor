.class Lcom/ibm/icu/impl/locale/KeyTypeData$KeyData;
.super Ljava/lang/Object;
.source "KeyTypeData.java"


# instance fields
.field bcpId:Ljava/lang/String;

.field legacyId:Ljava/lang/String;

.field specialTypes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;",
            ">;"
        }
    .end annotation
.end field

.field typeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/impl/locale/KeyTypeData$Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/impl/locale/KeyTypeData$Type;",
            ">;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/ibm/icu/impl/locale/KeyTypeData$KeyData;->legacyId:Ljava/lang/String;

    .line 105
    iput-object p2, p0, Lcom/ibm/icu/impl/locale/KeyTypeData$KeyData;->bcpId:Ljava/lang/String;

    .line 106
    iput-object p3, p0, Lcom/ibm/icu/impl/locale/KeyTypeData$KeyData;->typeMap:Ljava/util/Map;

    .line 107
    iput-object p4, p0, Lcom/ibm/icu/impl/locale/KeyTypeData$KeyData;->specialTypes:Ljava/util/EnumSet;

    .line 108
    return-void
.end method
