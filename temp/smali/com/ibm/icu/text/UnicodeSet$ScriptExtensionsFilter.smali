.class Lcom/ibm/icu/text/UnicodeSet$ScriptExtensionsFilter;
.super Ljava/lang/Object;
.source "UnicodeSet.java"

# interfaces
.implements Lcom/ibm/icu/text/UnicodeSet$Filter;


# instance fields
.field script:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 3217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ibm/icu/text/UnicodeSet$ScriptExtensionsFilter;->script:I

    return-void
.end method


# virtual methods
.method public contains(I)Z
    .locals 1

    .prologue
    .line 3220
    iget v0, p0, Lcom/ibm/icu/text/UnicodeSet$ScriptExtensionsFilter;->script:I

    invoke-static {p1, v0}, Lcom/ibm/icu/lang/UScript;->hasScript(II)Z

    move-result v0

    return v0
.end method
