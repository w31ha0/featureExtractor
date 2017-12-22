.class final enum Lcom/ibm/icu/util/UResourceBundle$RootType;
.super Ljava/lang/Enum;
.source "UResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ibm/icu/util/UResourceBundle$RootType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/util/UResourceBundle$RootType;

.field public static final enum ICU:Lcom/ibm/icu/util/UResourceBundle$RootType;

.field public static final enum JAVA:Lcom/ibm/icu/util/UResourceBundle$RootType;

.field public static final enum MISSING:Lcom/ibm/icu/util/UResourceBundle$RootType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 324
    new-instance v0, Lcom/ibm/icu/util/UResourceBundle$RootType;

    const-string/jumbo v1, "MISSING"

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/UResourceBundle$RootType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/util/UResourceBundle$RootType;->MISSING:Lcom/ibm/icu/util/UResourceBundle$RootType;

    new-instance v0, Lcom/ibm/icu/util/UResourceBundle$RootType;

    const-string/jumbo v1, "ICU"

    invoke-direct {v0, v1, v3}, Lcom/ibm/icu/util/UResourceBundle$RootType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/util/UResourceBundle$RootType;->ICU:Lcom/ibm/icu/util/UResourceBundle$RootType;

    new-instance v0, Lcom/ibm/icu/util/UResourceBundle$RootType;

    const-string/jumbo v1, "JAVA"

    invoke-direct {v0, v1, v4}, Lcom/ibm/icu/util/UResourceBundle$RootType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/util/UResourceBundle$RootType;->JAVA:Lcom/ibm/icu/util/UResourceBundle$RootType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ibm/icu/util/UResourceBundle$RootType;

    sget-object v1, Lcom/ibm/icu/util/UResourceBundle$RootType;->MISSING:Lcom/ibm/icu/util/UResourceBundle$RootType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/util/UResourceBundle$RootType;->ICU:Lcom/ibm/icu/util/UResourceBundle$RootType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ibm/icu/util/UResourceBundle$RootType;->JAVA:Lcom/ibm/icu/util/UResourceBundle$RootType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ibm/icu/util/UResourceBundle$RootType;->$VALUES:[Lcom/ibm/icu/util/UResourceBundle$RootType;

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
    .line 324
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle$RootType;
    .locals 1

    .prologue
    .line 324
    const-class v0, Lcom/ibm/icu/util/UResourceBundle$RootType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/UResourceBundle$RootType;

    return-object v0
.end method

.method public static values()[Lcom/ibm/icu/util/UResourceBundle$RootType;
    .locals 1

    .prologue
    .line 324
    sget-object v0, Lcom/ibm/icu/util/UResourceBundle$RootType;->$VALUES:[Lcom/ibm/icu/util/UResourceBundle$RootType;

    invoke-virtual {v0}, [Lcom/ibm/icu/util/UResourceBundle$RootType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/util/UResourceBundle$RootType;

    return-object v0
.end method
