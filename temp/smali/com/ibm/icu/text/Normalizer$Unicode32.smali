.class final Lcom/ibm/icu/text/Normalizer$Unicode32;
.super Ljava/lang/Object;
.source "Normalizer.java"


# static fields
.field private static final INSTANCE:Lcom/ibm/icu/text/UnicodeSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 173
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    const-string/jumbo v1, "[:age=3.2:]"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/Normalizer$Unicode32;->INSTANCE:Lcom/ibm/icu/text/UnicodeSet;

    return-void
.end method

.method static synthetic access$100()Lcom/ibm/icu/text/UnicodeSet;
    .locals 1

    .prologue
    .line 172
    sget-object v0, Lcom/ibm/icu/text/Normalizer$Unicode32;->INSTANCE:Lcom/ibm/icu/text/UnicodeSet;

    return-object v0
.end method
