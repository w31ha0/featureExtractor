.class public final enum Lcom/ibm/icu/util/BytesTrie$Result;
.super Ljava/lang/Enum;
.source "BytesTrie.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ibm/icu/util/BytesTrie$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/util/BytesTrie$Result;

.field public static final enum FINAL_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

.field public static final enum INTERMEDIATE_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

.field public static final enum NO_MATCH:Lcom/ibm/icu/util/BytesTrie$Result;

.field public static final enum NO_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 137
    new-instance v0, Lcom/ibm/icu/util/BytesTrie$Result;

    const-string/jumbo v1, "NO_MATCH"

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/BytesTrie$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/util/BytesTrie$Result;->NO_MATCH:Lcom/ibm/icu/util/BytesTrie$Result;

    .line 144
    new-instance v0, Lcom/ibm/icu/util/BytesTrie$Result;

    const-string/jumbo v1, "NO_VALUE"

    invoke-direct {v0, v1, v3}, Lcom/ibm/icu/util/BytesTrie$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/util/BytesTrie$Result;->NO_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    .line 152
    new-instance v0, Lcom/ibm/icu/util/BytesTrie$Result;

    const-string/jumbo v1, "FINAL_VALUE"

    invoke-direct {v0, v1, v4}, Lcom/ibm/icu/util/BytesTrie$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/util/BytesTrie$Result;->FINAL_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    .line 160
    new-instance v0, Lcom/ibm/icu/util/BytesTrie$Result;

    const-string/jumbo v1, "INTERMEDIATE_VALUE"

    invoke-direct {v0, v1, v5}, Lcom/ibm/icu/util/BytesTrie$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/util/BytesTrie$Result;->INTERMEDIATE_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    .line 129
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ibm/icu/util/BytesTrie$Result;

    sget-object v1, Lcom/ibm/icu/util/BytesTrie$Result;->NO_MATCH:Lcom/ibm/icu/util/BytesTrie$Result;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/util/BytesTrie$Result;->NO_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ibm/icu/util/BytesTrie$Result;->FINAL_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ibm/icu/util/BytesTrie$Result;->INTERMEDIATE_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ibm/icu/util/BytesTrie$Result;->$VALUES:[Lcom/ibm/icu/util/BytesTrie$Result;

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
    .line 129
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/util/BytesTrie$Result;
    .locals 1

    .prologue
    .line 129
    const-class v0, Lcom/ibm/icu/util/BytesTrie$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/BytesTrie$Result;

    return-object v0
.end method

.method public static values()[Lcom/ibm/icu/util/BytesTrie$Result;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/ibm/icu/util/BytesTrie$Result;->$VALUES:[Lcom/ibm/icu/util/BytesTrie$Result;

    invoke-virtual {v0}, [Lcom/ibm/icu/util/BytesTrie$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/util/BytesTrie$Result;

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/ibm/icu/util/BytesTrie$Result;->ordinal()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValue()Z
    .locals 2

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/ibm/icu/util/BytesTrie$Result;->ordinal()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
