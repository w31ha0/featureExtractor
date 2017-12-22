.class public Lcom/ibm/icu/impl/locale/LocaleSyntaxException;
.super Ljava/lang/Exception;
.source "LocaleSyntaxException.java"


# instance fields
.field private _index:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;->_index:I

    .line 23
    iput p2, p0, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;->_index:I

    .line 24
    return-void
.end method
