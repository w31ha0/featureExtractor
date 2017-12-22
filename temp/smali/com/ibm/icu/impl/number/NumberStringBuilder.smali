.class public Lcom/ibm/icu/impl/number/NumberStringBuilder;
.super Ljava/lang/Object;
.source "NumberStringBuilder.java"

# interfaces
.implements Ljava/lang/CharSequence;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final fieldToDebugChar:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/ibm/icu/text/NumberFormat$Field;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private chars:[C

.field private fields:[Lcom/ibm/icu/text/NumberFormat$Field;

.field private length:I

.field private zero:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    const-class v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->$assertionsDisabled:Z

    .line 249
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    .line 252
    sget-object v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->SIGN:Lcom/ibm/icu/text/NumberFormat$Field;

    const/16 v2, 0x2d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

    const/16 v2, 0x69

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->FRACTION:Lcom/ibm/icu/text/NumberFormat$Field;

    const/16 v2, 0x66

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT:Lcom/ibm/icu/text/NumberFormat$Field;

    const/16 v2, 0x65

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Lcom/ibm/icu/text/NumberFormat$Field;

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Lcom/ibm/icu/text/NumberFormat$Field;

    const/16 v2, 0x45

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->PERCENT:Lcom/ibm/icu/text/NumberFormat$Field;

    const/16 v2, 0x25

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->PERMILLE:Lcom/ibm/icu/text/NumberFormat$Field;

    const/16 v2, 0x2030

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->CURRENCY:Lcom/ibm/icu/text/NumberFormat$Field;

    const/16 v2, 0x24

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    return-void

    .line 15
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/number/NumberStringBuilder;-><init>(I)V

    .line 23
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-array v0, p1, [C

    iput-object v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    .line 27
    new-array v0, p1, [Lcom/ibm/icu/text/NumberFormat$Field;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    .line 28
    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/impl/number/NumberStringBuilder;)V
    .locals 5

    .prologue
    .line 33
    iget-object v0, p1, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    array-length v0, v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/number/NumberStringBuilder;-><init>(I)V

    .line 34
    iget v0, p1, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    iput v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    .line 35
    iget v0, p1, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    iput v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    .line 36
    iget-object v0, p1, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    iget v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    iget-object v2, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    iget v3, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    iget v4, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    iget-object v0, p1, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    iget v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    iget-object v2, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    iget v3, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    iget v4, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    return-void
.end method

.method private prepareForInsert(II)I
    .locals 2

    .prologue
    .line 187
    if-nez p1, :cond_0

    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    sub-int/2addr v0, p2

    if-ltz v0, :cond_0

    .line 189
    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    .line 190
    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    .line 191
    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    .line 198
    :goto_0
    return v0

    .line 192
    :cond_0
    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    iget v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    iget-object v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 194
    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    .line 195
    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    iget v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    goto :goto_0

    .line 198
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->prepareForInsertHelper(II)I

    move-result v0

    goto :goto_0
.end method

.method private prepareForInsertHelper(II)I
    .locals 7

    .prologue
    .line 204
    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    add-int/2addr v0, p2

    iget-object v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 205
    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    add-int/2addr v0, p2

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 206
    iget v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    add-int/2addr v1, p2

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lcom/ibm/icu/text/NumberFormat$Field;

    .line 207
    array-length v2, v0

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    add-int/2addr v3, p2

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 208
    iget-object v3, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    iget v4, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    invoke-static {v3, v4, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    iget-object v3, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    iget v4, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    add-int/2addr v4, p1

    add-int v5, v2, p1

    add-int/2addr v5, p2

    iget v6, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    sub-int/2addr v6, p1

    invoke-static {v3, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    iget-object v3, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    iget v4, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    invoke-static {v3, v4, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    iget-object v3, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    iget v4, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    add-int/2addr v4, p1

    add-int v5, v2, p1

    add-int/2addr v5, p2

    iget v6, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    sub-int/2addr v6, p1

    invoke-static {v3, v4, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    iput-object v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    .line 213
    iput-object v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    .line 214
    iput v2, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    .line 215
    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    .line 225
    :goto_0
    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    add-int/2addr v0, p1

    return v0

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    add-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 218
    iget-object v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    iget v2, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    iget-object v3, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    iget v4, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    iget-object v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    add-int v2, v0, p1

    iget-object v3, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    add-int v4, v0, p1

    add-int/2addr v4, p2

    iget v5, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    sub-int/2addr v5, p1

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    iget-object v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    iget v2, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    iget-object v3, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    iget v4, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    iget-object v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    add-int v2, v0, p1

    iget-object v3, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    add-int v4, v0, p1

    add-int/2addr v4, p2

    iget v5, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    sub-int/2addr v5, p1

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    iput v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    .line 223
    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    goto :goto_0
.end method


# virtual methods
.method public append(Lcom/ibm/icu/impl/number/NumberStringBuilder;)I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->insert(ILcom/ibm/icu/impl/number/NumberStringBuilder;)I

    move-result v0

    return v0
.end method

.method public append(Ljava/lang/CharSequence;Lcom/ibm/icu/text/NumberFormat$Field;)I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->insert(ILjava/lang/CharSequence;Lcom/ibm/icu/text/NumberFormat$Field;)I

    move-result v0

    return v0
.end method

.method public appendCodePoint(ILcom/ibm/icu/text/NumberFormat$Field;)I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->insertCodePoint(IILcom/ibm/icu/text/NumberFormat$Field;)I

    move-result v0

    return v0
.end method

.method public charAt(I)C
    .locals 2

    .prologue
    .line 47
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    if-le p1, v0, :cond_1

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    iget v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    add-int/2addr v1, p1

    aget-char v0, v0, v1

    return v0
.end method

.method public clear()Lcom/ibm/icu/impl/number/NumberStringBuilder;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    .line 408
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    .line 409
    return-object p0
.end method

.method public contentEquals([C[Lcom/ibm/icu/text/NumberFormat$Field;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 306
    array-length v0, p1

    iget v2, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    if-eq v0, v2, :cond_1

    .line 312
    :cond_0
    :goto_0
    return v1

    .line 307
    :cond_1
    array-length v0, p2

    iget v2, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 308
    :goto_1
    iget v2, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    if-ge v0, v2, :cond_2

    .line 309
    iget-object v2, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    iget v3, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    add-int/2addr v3, v0

    aget-char v2, v2, v3

    aget-char v3, p1, v0

    if-ne v2, v3, :cond_0

    .line 310
    iget-object v2, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    iget v3, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    add-int/2addr v3, v0

    aget-object v2, v2, v3

    aget-object v3, p2, v0

    if-ne v2, v3, :cond_0

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 312
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getIterator()Ljava/text/AttributedCharacterIterator;
    .locals 7

    .prologue
    .line 383
    new-instance v4, Ljava/text/AttributedString;

    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 384
    const/4 v2, 0x0

    .line 385
    const/4 v0, -0x1

    .line 386
    const/4 v1, 0x0

    :goto_0
    iget v3, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    if-ge v1, v3, :cond_3

    .line 387
    iget-object v3, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    iget v5, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    add-int/2addr v5, v1

    aget-object v3, v3, v5

    .line 388
    sget-object v5, Lcom/ibm/icu/text/NumberFormat$Field;->INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

    if-ne v2, v5, :cond_1

    sget-object v5, Lcom/ibm/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

    if-ne v3, v5, :cond_1

    .line 390
    sget-object v3, Lcom/ibm/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

    sget-object v5, Lcom/ibm/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v4, v3, v5, v1, v6}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    .line 386
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 392
    :cond_1
    if-eq v2, v3, :cond_0

    .line 393
    if-eqz v2, :cond_2

    .line 394
    invoke-virtual {v4, v2, v2, v0, v1}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    :cond_2
    move v0, v1

    move-object v2, v3

    .line 397
    goto :goto_1

    .line 400
    :cond_3
    if-eqz v2, :cond_4

    .line 401
    iget v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    invoke-virtual {v4, v2, v2, v0, v1}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    .line 403
    :cond_4
    invoke-virtual {v4}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILcom/ibm/icu/impl/number/NumberStringBuilder;)I
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 166
    if-ne p0, p2, :cond_0

    .line 167
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot call insert/append on myself"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    iget v1, p2, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    .line 170
    if-nez v1, :cond_1

    .line 176
    :goto_0
    return v0

    .line 171
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->prepareForInsert(II)I

    move-result v2

    .line 172
    :goto_1
    if-ge v0, v1, :cond_2

    .line 173
    iget-object v3, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    add-int v4, v2, v0

    iget-object v5, p2, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    iget v6, p2, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    add-int/2addr v6, v0

    aget-char v5, v5, v6

    aput-char v5, v3, v4

    .line 174
    iget-object v3, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    add-int v4, v2, v0

    iget-object v5, p2, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    iget v6, p2, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    add-int/2addr v6, v0

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 176
    goto :goto_0
.end method

.method public insert(ILjava/lang/CharSequence;IILcom/ibm/icu/text/NumberFormat$Field;)I
    .locals 6

    .prologue
    .line 110
    sub-int v1, p4, p3

    .line 111
    invoke-direct {p0, p1, v1}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->prepareForInsert(II)I

    move-result v2

    .line 112
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 113
    iget-object v3, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    add-int v4, v2, v0

    add-int v5, p3, v0

    invoke-interface {p2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    aput-char v5, v3, v4

    .line 114
    iget-object v3, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    add-int v4, v2, v0

    aput-object p5, v3, v4

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_0
    return v1
.end method

.method public insert(ILjava/lang/CharSequence;Lcom/ibm/icu/text/NumberFormat$Field;)I
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 91
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 99
    :goto_0
    return v3

    .line 94
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 97
    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->insertCodePoint(IILcom/ibm/icu/text/NumberFormat$Field;)I

    move-result v3

    goto :goto_0

    .line 99
    :cond_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->insert(ILjava/lang/CharSequence;IILcom/ibm/icu/text/NumberFormat$Field;)I

    move-result v3

    goto :goto_0
.end method

.method public insert(I[C[Lcom/ibm/icu/text/NumberFormat$Field;)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 137
    sget-boolean v1, Lcom/ibm/icu/impl/number/NumberStringBuilder;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-eqz p3, :cond_0

    array-length v1, p2

    array-length v2, p3

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 138
    :cond_0
    array-length v1, p2

    .line 139
    if-nez v1, :cond_1

    .line 145
    :goto_0
    return v0

    .line 140
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->prepareForInsert(II)I

    move-result v3

    move v2, v0

    .line 141
    :goto_1
    if-ge v2, v1, :cond_3

    .line 142
    iget-object v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    add-int v4, v3, v2

    aget-char v5, p2, v2

    aput-char v5, v0, v4

    .line 143
    iget-object v4, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    add-int v5, v3, v2

    if-nez p3, :cond_2

    const/4 v0, 0x0

    :goto_2
    aput-object v0, v4, v5

    .line 141
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 143
    :cond_2
    aget-object v0, p3, v2

    goto :goto_2

    :cond_3
    move v0, v1

    .line 145
    goto :goto_0
.end method

.method public insertCodePoint(IILcom/ibm/icu/text/NumberFormat$Field;)I
    .locals 3

    .prologue
    .line 68
    invoke-static {p2}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    .line 69
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->prepareForInsert(II)I

    move-result v1

    .line 70
    iget-object v2, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    invoke-static {p2, v2, v1}, Ljava/lang/Character;->toChars(I[CI)I

    .line 71
    iget-object v2, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    aput-object p3, v2, v1

    .line 72
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    add-int/lit8 v1, v1, 0x1

    aput-object p3, v2, v1

    .line 73
    :cond_0
    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    return v0
.end method

.method public populateFieldPosition(Ljava/text/FieldPosition;I)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 335
    invoke-virtual {p1}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v0

    .line 337
    if-nez v0, :cond_0

    .line 339
    invoke-virtual {p1}, Ljava/text/FieldPosition;->getField()I

    move-result v0

    if-nez v0, :cond_1

    .line 340
    sget-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

    .line 349
    :cond_0
    :goto_0
    instance-of v1, v0, Lcom/ibm/icu/text/NumberFormat$Field;

    if-nez v1, :cond_2

    .line 350
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "You must pass an instance of com.ibm.icu.text.NumberFormat.Field as your FieldPosition attribute.  You passed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 352
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 341
    :cond_1
    invoke-virtual {p1}, Ljava/text/FieldPosition;->getField()I

    move-result v0

    if-ne v0, v4, :cond_7

    .line 342
    sget-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->FRACTION:Lcom/ibm/icu/text/NumberFormat$Field;

    goto :goto_0

    .line 354
    :cond_2
    check-cast v0, Lcom/ibm/icu/text/NumberFormat$Field;

    .line 356
    const/4 v3, 0x0

    .line 357
    const/4 v2, -0x1

    .line 358
    iget v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    :goto_1
    iget v5, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    iget v6, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    add-int/2addr v5, v6

    if-gt v1, v5, :cond_6

    .line 359
    iget v5, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    iget v6, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    add-int/2addr v5, v6

    if-ge v1, v5, :cond_4

    iget-object v5, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    aget-object v5, v5, v1

    .line 360
    :goto_2
    if-eqz v3, :cond_8

    if-eq v0, v5, :cond_8

    .line 362
    sget-object v6, Lcom/ibm/icu/text/NumberFormat$Field;->INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

    if-ne v0, v6, :cond_5

    sget-object v6, Lcom/ibm/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

    if-ne v5, v6, :cond_5

    .line 358
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 359
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 364
    :cond_5
    iget v4, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    sub-int/2addr v1, v4

    add-int/2addr v1, p2

    invoke-virtual {p1, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 376
    :cond_6
    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->FRACTION:Lcom/ibm/icu/text/NumberFormat$Field;

    if-ne v0, v1, :cond_7

    if-nez v3, :cond_7

    .line 377
    invoke-virtual {p1, v2}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 378
    invoke-virtual {p1, v2}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 380
    :cond_7
    return-void

    .line 366
    :cond_8
    if-nez v3, :cond_9

    if-ne v0, v5, :cond_9

    .line 367
    iget v3, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    sub-int v3, v1, v3

    add-int/2addr v3, p2

    invoke-virtual {p1, v3}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    move v3, v4

    .line 370
    :cond_9
    sget-object v6, Lcom/ibm/icu/text/NumberFormat$Field;->INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

    if-eq v5, v6, :cond_a

    sget-object v6, Lcom/ibm/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

    if-ne v5, v6, :cond_3

    .line 371
    :cond_a
    iget v2, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    sub-int v2, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 230
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    if-gt p2, v0, :cond_0

    if-ge p2, p1, :cond_1

    .line 231
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 233
    :cond_1
    new-instance v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/number/NumberStringBuilder;-><init>(Lcom/ibm/icu/impl/number/NumberStringBuilder;)V

    .line 234
    iget v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    .line 235
    sub-int v1, p2, p1

    iput v1, v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    .line 236
    return-object v0
.end method

.method public toCharArray()[C
    .locals 4

    .prologue
    .line 291
    iget-object v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    iget v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    iget v2, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    iget v3, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v0

    return-object v0
.end method

.method public toFieldArray()[Lcom/ibm/icu/text/NumberFormat$Field;
    .locals 4

    .prologue
    .line 296
    iget-object v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    iget v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    iget v2, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    iget v3, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/text/NumberFormat$Field;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 246
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    iget v2, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    iget v3, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
