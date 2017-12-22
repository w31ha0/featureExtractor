.class Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;
.super Ljava/lang/Object;
.source "TimeZoneFormat.java"


# instance fields
.field final _type:C

.field final _width:I


# direct methods
.method constructor <init>(CI)V
    .locals 0

    .prologue
    .line 1987
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1988
    iput-char p1, p0, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;->_type:C

    .line 1989
    iput p2, p0, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;->_width:I

    .line 1990
    return-void
.end method

.method static isValid(CI)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2002
    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method getType()C
    .locals 1

    .prologue
    .line 1993
    iget-char v0, p0, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;->_type:C

    return v0
.end method
