.class public final enum Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;
.super Ljava/lang/Enum;
.source "TimeZoneGenericNames.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

.field public static final enum LOCATION:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

.field public static final enum LONG:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

.field public static final enum SHORT:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;


# instance fields
.field _fallbackTypeOf:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 58
    new-instance v0, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    const-string/jumbo v1, "LOCATION"

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "LONG"

    aput-object v3, v2, v4

    const-string/jumbo v3, "SHORT"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v4, v2}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->LOCATION:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    .line 59
    new-instance v0, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    const-string/jumbo v1, "LONG"

    new-array v2, v4, [Ljava/lang/String;

    invoke-direct {v0, v1, v5, v2}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    .line 60
    new-instance v0, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    const-string/jumbo v1, "SHORT"

    new-array v2, v4, [Ljava/lang/String;

    invoke-direct {v0, v1, v6, v2}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    sget-object v1, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->LOCATION:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->$VALUES:[Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput-object p3, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->_fallbackTypeOf:[Ljava/lang/String;

    .line 65
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    return-object v0
.end method

.method public static values()[Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->$VALUES:[Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-virtual {v0}, [Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    return-object v0
.end method
