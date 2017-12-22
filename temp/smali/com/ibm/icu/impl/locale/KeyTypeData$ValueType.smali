.class public final enum Lcom/ibm/icu/impl/locale/KeyTypeData$ValueType;
.super Ljava/lang/Enum;
.source "KeyTypeData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ibm/icu/impl/locale/KeyTypeData$ValueType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/impl/locale/KeyTypeData$ValueType;

.field public static final enum any:Lcom/ibm/icu/impl/locale/KeyTypeData$ValueType;

.field public static final enum incremental:Lcom/ibm/icu/impl/locale/KeyTypeData$ValueType;

.field public static final enum multiple:Lcom/ibm/icu/impl/locale/KeyTypeData$ValueType;

.field public static final enum single:Lcom/ibm/icu/impl/locale/KeyTypeData$ValueType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/ibm/icu/impl/locale/KeyTypeData$ValueType;

    const-string/jumbo v1, "single"

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/locale/KeyTypeData$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/locale/KeyTypeData$ValueType;->single:Lcom/ibm/icu/impl/locale/KeyTypeData$ValueType;

    new-instance v0, Lcom/ibm/icu/impl/locale/KeyTypeData$ValueType;

    const-string/jumbo v1, "multiple"

    invoke-direct {v0, v1, v3}, Lcom/ibm/icu/impl/locale/KeyTypeData$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/locale/KeyTypeData$ValueType;->multiple:Lcom/ibm/icu/impl/locale/KeyTypeData$ValueType;

    new-instance v0, Lcom/ibm/icu/impl/locale/KeyTypeData$ValueType;

    const-string/jumbo v1, "incremental"

    invoke-direct {v0, v1, v4}, Lcom/ibm/icu/impl/locale/KeyTypeData$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/locale/KeyTypeData$ValueType;->incremental:Lcom/ibm/icu/impl/locale/KeyTypeData$ValueType;

    new-instance v0, Lcom/ibm/icu/impl/locale/KeyTypeData$ValueType;

    const-string/jumbo v1, "any"

    invoke-direct {v0, v1, v5}, Lcom/ibm/icu/impl/locale/KeyTypeData$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/locale/KeyTypeData$ValueType;->any:Lcom/ibm/icu/impl/locale/KeyTypeData$ValueType;

    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ibm/icu/impl/locale/KeyTypeData$ValueType;

    sget-object v1, Lcom/ibm/icu/impl/locale/KeyTypeData$ValueType;->single:Lcom/ibm/icu/impl/locale/KeyTypeData$ValueType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/impl/locale/KeyTypeData$ValueType;->multiple:Lcom/ibm/icu/impl/locale/KeyTypeData$ValueType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ibm/icu/impl/locale/KeyTypeData$ValueType;->incremental:Lcom/ibm/icu/impl/locale/KeyTypeData$ValueType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ibm/icu/impl/locale/KeyTypeData$ValueType;->any:Lcom/ibm/icu/impl/locale/KeyTypeData$ValueType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ibm/icu/impl/locale/KeyTypeData$ValueType;->$VALUES:[Lcom/ibm/icu/impl/locale/KeyTypeData$ValueType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/locale/KeyTypeData$ValueType;
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/ibm/icu/impl/locale/KeyTypeData$ValueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/locale/KeyTypeData$ValueType;

    return-object v0
.end method

.method public static values()[Lcom/ibm/icu/impl/locale/KeyTypeData$ValueType;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/ibm/icu/impl/locale/KeyTypeData$ValueType;->$VALUES:[Lcom/ibm/icu/impl/locale/KeyTypeData$ValueType;

    invoke-virtual {v0}, [Lcom/ibm/icu/impl/locale/KeyTypeData$ValueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/impl/locale/KeyTypeData$ValueType;

    return-object v0
.end method
