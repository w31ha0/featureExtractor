.class public final enum Lcom/ibm/icu/lang/UScript$ScriptUsage;
.super Ljava/lang/Enum;
.source "UScript.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ibm/icu/lang/UScript$ScriptUsage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/lang/UScript$ScriptUsage;

.field public static final enum ASPIRATIONAL:Lcom/ibm/icu/lang/UScript$ScriptUsage;

.field public static final enum EXCLUDED:Lcom/ibm/icu/lang/UScript$ScriptUsage;

.field public static final enum LIMITED_USE:Lcom/ibm/icu/lang/UScript$ScriptUsage;

.field public static final enum NOT_ENCODED:Lcom/ibm/icu/lang/UScript$ScriptUsage;

.field public static final enum RECOMMENDED:Lcom/ibm/icu/lang/UScript$ScriptUsage;

.field public static final enum UNKNOWN:Lcom/ibm/icu/lang/UScript$ScriptUsage;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1485
    new-instance v0, Lcom/ibm/icu/lang/UScript$ScriptUsage;

    const-string/jumbo v1, "NOT_ENCODED"

    invoke-direct {v0, v1, v3}, Lcom/ibm/icu/lang/UScript$ScriptUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/lang/UScript$ScriptUsage;->NOT_ENCODED:Lcom/ibm/icu/lang/UScript$ScriptUsage;

    .line 1490
    new-instance v0, Lcom/ibm/icu/lang/UScript$ScriptUsage;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lcom/ibm/icu/lang/UScript$ScriptUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/lang/UScript$ScriptUsage;->UNKNOWN:Lcom/ibm/icu/lang/UScript$ScriptUsage;

    .line 1495
    new-instance v0, Lcom/ibm/icu/lang/UScript$ScriptUsage;

    const-string/jumbo v1, "EXCLUDED"

    invoke-direct {v0, v1, v5}, Lcom/ibm/icu/lang/UScript$ScriptUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/lang/UScript$ScriptUsage;->EXCLUDED:Lcom/ibm/icu/lang/UScript$ScriptUsage;

    .line 1500
    new-instance v0, Lcom/ibm/icu/lang/UScript$ScriptUsage;

    const-string/jumbo v1, "LIMITED_USE"

    invoke-direct {v0, v1, v6}, Lcom/ibm/icu/lang/UScript$ScriptUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/lang/UScript$ScriptUsage;->LIMITED_USE:Lcom/ibm/icu/lang/UScript$ScriptUsage;

    .line 1505
    new-instance v0, Lcom/ibm/icu/lang/UScript$ScriptUsage;

    const-string/jumbo v1, "ASPIRATIONAL"

    invoke-direct {v0, v1, v7}, Lcom/ibm/icu/lang/UScript$ScriptUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/lang/UScript$ScriptUsage;->ASPIRATIONAL:Lcom/ibm/icu/lang/UScript$ScriptUsage;

    .line 1510
    new-instance v0, Lcom/ibm/icu/lang/UScript$ScriptUsage;

    const-string/jumbo v1, "RECOMMENDED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/lang/UScript$ScriptUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/lang/UScript$ScriptUsage;->RECOMMENDED:Lcom/ibm/icu/lang/UScript$ScriptUsage;

    .line 1480
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/ibm/icu/lang/UScript$ScriptUsage;

    sget-object v1, Lcom/ibm/icu/lang/UScript$ScriptUsage;->NOT_ENCODED:Lcom/ibm/icu/lang/UScript$ScriptUsage;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ibm/icu/lang/UScript$ScriptUsage;->UNKNOWN:Lcom/ibm/icu/lang/UScript$ScriptUsage;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ibm/icu/lang/UScript$ScriptUsage;->EXCLUDED:Lcom/ibm/icu/lang/UScript$ScriptUsage;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ibm/icu/lang/UScript$ScriptUsage;->LIMITED_USE:Lcom/ibm/icu/lang/UScript$ScriptUsage;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ibm/icu/lang/UScript$ScriptUsage;->ASPIRATIONAL:Lcom/ibm/icu/lang/UScript$ScriptUsage;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/ibm/icu/lang/UScript$ScriptUsage;->RECOMMENDED:Lcom/ibm/icu/lang/UScript$ScriptUsage;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu/lang/UScript$ScriptUsage;->$VALUES:[Lcom/ibm/icu/lang/UScript$ScriptUsage;

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
    .line 1480
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/lang/UScript$ScriptUsage;
    .locals 1

    .prologue
    .line 1480
    const-class v0, Lcom/ibm/icu/lang/UScript$ScriptUsage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/lang/UScript$ScriptUsage;

    return-object v0
.end method

.method public static values()[Lcom/ibm/icu/lang/UScript$ScriptUsage;
    .locals 1

    .prologue
    .line 1480
    sget-object v0, Lcom/ibm/icu/lang/UScript$ScriptUsage;->$VALUES:[Lcom/ibm/icu/lang/UScript$ScriptUsage;

    invoke-virtual {v0}, [Lcom/ibm/icu/lang/UScript$ScriptUsage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/lang/UScript$ScriptUsage;

    return-object v0
.end method
