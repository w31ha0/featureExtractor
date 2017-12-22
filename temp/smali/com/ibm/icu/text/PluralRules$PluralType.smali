.class public final enum Lcom/ibm/icu/text/PluralRules$PluralType;
.super Ljava/lang/Enum;
.source "PluralRules.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ibm/icu/text/PluralRules$PluralType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/text/PluralRules$PluralType;

.field public static final enum CARDINAL:Lcom/ibm/icu/text/PluralRules$PluralType;

.field public static final enum ORDINAL:Lcom/ibm/icu/text/PluralRules$PluralType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 344
    new-instance v0, Lcom/ibm/icu/text/PluralRules$PluralType;

    const-string/jumbo v1, "CARDINAL"

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/PluralRules$PluralType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/PluralRules$PluralType;->CARDINAL:Lcom/ibm/icu/text/PluralRules$PluralType;

    .line 349
    new-instance v0, Lcom/ibm/icu/text/PluralRules$PluralType;

    const-string/jumbo v1, "ORDINAL"

    invoke-direct {v0, v1, v3}, Lcom/ibm/icu/text/PluralRules$PluralType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/PluralRules$PluralType;->ORDINAL:Lcom/ibm/icu/text/PluralRules$PluralType;

    .line 339
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ibm/icu/text/PluralRules$PluralType;

    sget-object v1, Lcom/ibm/icu/text/PluralRules$PluralType;->CARDINAL:Lcom/ibm/icu/text/PluralRules$PluralType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/text/PluralRules$PluralType;->ORDINAL:Lcom/ibm/icu/text/PluralRules$PluralType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ibm/icu/text/PluralRules$PluralType;->$VALUES:[Lcom/ibm/icu/text/PluralRules$PluralType;

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
    .line 339
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$PluralType;
    .locals 1

    .prologue
    .line 339
    const-class v0, Lcom/ibm/icu/text/PluralRules$PluralType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/PluralRules$PluralType;

    return-object v0
.end method

.method public static values()[Lcom/ibm/icu/text/PluralRules$PluralType;
    .locals 1

    .prologue
    .line 339
    sget-object v0, Lcom/ibm/icu/text/PluralRules$PluralType;->$VALUES:[Lcom/ibm/icu/text/PluralRules$PluralType;

    invoke-virtual {v0}, [Lcom/ibm/icu/text/PluralRules$PluralType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/text/PluralRules$PluralType;

    return-object v0
.end method
