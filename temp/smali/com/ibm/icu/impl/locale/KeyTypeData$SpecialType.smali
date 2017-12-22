.class final enum Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;
.super Ljava/lang/Enum;
.source "KeyTypeData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

.field public static final enum CODEPOINTS:Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

.field public static final enum PRIVATE_USE:Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

.field public static final enum REORDER_CODE:Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

.field public static final enum RG_KEY_VALUE:Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

.field public static final enum SUBDIVISION_CODE:Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;


# instance fields
.field handler:Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialTypeHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 84
    new-instance v0, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

    const-string/jumbo v1, "CODEPOINTS"

    new-instance v2, Lcom/ibm/icu/impl/locale/KeyTypeData$CodepointsTypeHandler;

    invoke-direct {v2, v4}, Lcom/ibm/icu/impl/locale/KeyTypeData$CodepointsTypeHandler;-><init>(Lcom/ibm/icu/impl/locale/KeyTypeData$1;)V

    invoke-direct {v0, v1, v5, v2}, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;-><init>(Ljava/lang/String;ILcom/ibm/icu/impl/locale/KeyTypeData$SpecialTypeHandler;)V

    sput-object v0, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;->CODEPOINTS:Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

    .line 85
    new-instance v0, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

    const-string/jumbo v1, "REORDER_CODE"

    new-instance v2, Lcom/ibm/icu/impl/locale/KeyTypeData$ReorderCodeTypeHandler;

    invoke-direct {v2, v4}, Lcom/ibm/icu/impl/locale/KeyTypeData$ReorderCodeTypeHandler;-><init>(Lcom/ibm/icu/impl/locale/KeyTypeData$1;)V

    invoke-direct {v0, v1, v6, v2}, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;-><init>(Ljava/lang/String;ILcom/ibm/icu/impl/locale/KeyTypeData$SpecialTypeHandler;)V

    sput-object v0, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;->REORDER_CODE:Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

    .line 86
    new-instance v0, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

    const-string/jumbo v1, "RG_KEY_VALUE"

    new-instance v2, Lcom/ibm/icu/impl/locale/KeyTypeData$RgKeyValueTypeHandler;

    invoke-direct {v2, v4}, Lcom/ibm/icu/impl/locale/KeyTypeData$RgKeyValueTypeHandler;-><init>(Lcom/ibm/icu/impl/locale/KeyTypeData$1;)V

    invoke-direct {v0, v1, v7, v2}, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;-><init>(Ljava/lang/String;ILcom/ibm/icu/impl/locale/KeyTypeData$SpecialTypeHandler;)V

    sput-object v0, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;->RG_KEY_VALUE:Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

    .line 87
    new-instance v0, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

    const-string/jumbo v1, "SUBDIVISION_CODE"

    new-instance v2, Lcom/ibm/icu/impl/locale/KeyTypeData$SubdivisionKeyValueTypeHandler;

    invoke-direct {v2, v4}, Lcom/ibm/icu/impl/locale/KeyTypeData$SubdivisionKeyValueTypeHandler;-><init>(Lcom/ibm/icu/impl/locale/KeyTypeData$1;)V

    invoke-direct {v0, v1, v8, v2}, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;-><init>(Ljava/lang/String;ILcom/ibm/icu/impl/locale/KeyTypeData$SpecialTypeHandler;)V

    sput-object v0, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;->SUBDIVISION_CODE:Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

    .line 88
    new-instance v0, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

    const-string/jumbo v1, "PRIVATE_USE"

    const/4 v2, 0x4

    new-instance v3, Lcom/ibm/icu/impl/locale/KeyTypeData$PrivateUseKeyValueTypeHandler;

    invoke-direct {v3, v4}, Lcom/ibm/icu/impl/locale/KeyTypeData$PrivateUseKeyValueTypeHandler;-><init>(Lcom/ibm/icu/impl/locale/KeyTypeData$1;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;-><init>(Ljava/lang/String;ILcom/ibm/icu/impl/locale/KeyTypeData$SpecialTypeHandler;)V

    sput-object v0, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;->PRIVATE_USE:Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

    .line 83
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

    sget-object v1, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;->CODEPOINTS:Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;->REORDER_CODE:Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;->RG_KEY_VALUE:Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;->SUBDIVISION_CODE:Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

    aput-object v1, v0, v8

    const/4 v1, 0x4

    sget-object v2, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;->PRIVATE_USE:Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;->$VALUES:[Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/ibm/icu/impl/locale/KeyTypeData$SpecialTypeHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialTypeHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 92
    iput-object p3, p0, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;->handler:Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialTypeHandler;

    .line 93
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;
    .locals 1

    .prologue
    .line 83
    const-class v0, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

    return-object v0
.end method

.method public static values()[Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;->$VALUES:[Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

    invoke-virtual {v0}, [Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

    return-object v0
.end method
