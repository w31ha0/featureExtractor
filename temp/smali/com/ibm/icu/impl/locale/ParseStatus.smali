.class public Lcom/ibm/icu/impl/locale/ParseStatus;
.super Ljava/lang/Object;
.source "ParseStatus.java"


# instance fields
.field _errorIndex:I

.field _errorMsg:Ljava/lang/String;

.field _parseLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/impl/locale/ParseStatus;->_parseLength:I

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lcom/ibm/icu/impl/locale/ParseStatus;->_errorIndex:I

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/impl/locale/ParseStatus;->_errorMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isError()Z
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/ibm/icu/impl/locale/ParseStatus;->_errorIndex:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/impl/locale/ParseStatus;->_parseLength:I

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/ibm/icu/impl/locale/ParseStatus;->_errorIndex:I

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/impl/locale/ParseStatus;->_errorMsg:Ljava/lang/String;

    .line 20
    return-void
.end method
