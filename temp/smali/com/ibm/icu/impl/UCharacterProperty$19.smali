.class Lcom/ibm/icu/impl/UCharacterProperty$19;
.super Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;
.source "UCharacterProperty.java"


# instance fields
.field final synthetic this$0:Lcom/ibm/icu/impl/UCharacterProperty;


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/UCharacterProperty;III)V
    .locals 0

    .prologue
    .line 557
    iput-object p1, p0, Lcom/ibm/icu/impl/UCharacterProperty$19;->this$0:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;III)V

    return-void
.end method


# virtual methods
.method getValue(I)I
    .locals 1

    .prologue
    .line 560
    invoke-static {p1}, Lcom/ibm/icu/lang/UScript;->getScript(I)I

    move-result v0

    return v0
.end method
