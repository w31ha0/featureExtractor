.class public Lcom/ibm/icu/impl/number/modifiers/SimpleModifier;
.super Lcom/ibm/icu/impl/number/Modifier$BaseModifier;
.source "SimpleModifier.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final compiledPattern:Ljava/lang/String;

.field private final field:Lcom/ibm/icu/text/NumberFormat$Field;

.field private final strong:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/ibm/icu/impl/number/modifiers/SimpleModifier;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/ibm/icu/impl/number/modifiers/SimpleModifier;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ibm/icu/text/NumberFormat$Field;Z)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/Modifier$BaseModifier;-><init>()V

    .line 22
    if-nez p1, :cond_0

    const-string/jumbo p1, "\u0001\u0000"

    :cond_0
    iput-object p1, p0, Lcom/ibm/icu/impl/number/modifiers/SimpleModifier;->compiledPattern:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/ibm/icu/impl/number/modifiers/SimpleModifier;->field:Lcom/ibm/icu/text/NumberFormat$Field;

    .line 24
    iput-boolean p3, p0, Lcom/ibm/icu/impl/number/modifiers/SimpleModifier;->strong:Z

    .line 25
    return-void
.end method

.method public static formatAsPrefixSuffix(Ljava/lang/String;Lcom/ibm/icu/impl/number/NumberStringBuilder;IILcom/ibm/icu/text/NumberFormat$Field;)I
    .locals 9

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 78
    sget-boolean v0, Lcom/ibm/icu/impl/number/modifiers/SimpleModifier;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->getArgumentLimit(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 79
    :cond_0
    const/16 v7, 0x100

    .line 80
    const/4 v6, 0x0

    .line 81
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eqz v0, :cond_4

    .line 82
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sub-int v8, v0, v7

    .line 83
    if-eqz p1, :cond_1

    .line 84
    add-int/lit8 v4, v8, 0x2

    move-object v0, p1

    move v1, p2

    move-object v2, p0

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->insert(ILjava/lang/CharSequence;IILcom/ibm/icu/text/NumberFormat$Field;)I

    .line 86
    :cond_1
    add-int v0, v6, v8

    .line 87
    add-int/lit8 v3, v8, 0x3

    move v6, v0

    move v0, v3

    .line 89
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 90
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sub-int v7, v1, v7

    .line 91
    if-eqz p1, :cond_2

    .line 92
    add-int v1, p3, v6

    add-int/lit8 v3, v0, 0x1

    add-int/2addr v0, v7

    add-int/lit8 v4, v0, 0x1

    move-object v0, p1

    move-object v2, p0

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->insert(ILjava/lang/CharSequence;IILcom/ibm/icu/text/NumberFormat$Field;)I

    .line 95
    :cond_2
    add-int/2addr v6, v7

    .line 97
    :cond_3
    return v6

    :cond_4
    move v0, v3

    goto :goto_0
.end method


# virtual methods
.method public apply(Lcom/ibm/icu/impl/number/NumberStringBuilder;II)I
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/ibm/icu/impl/number/modifiers/SimpleModifier;->compiledPattern:Ljava/lang/String;

    iget-object v1, p0, Lcom/ibm/icu/impl/number/modifiers/SimpleModifier;->field:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-static {v0, p1, p2, p3, v1}, Lcom/ibm/icu/impl/number/modifiers/SimpleModifier;->formatAsPrefixSuffix(Ljava/lang/String;Lcom/ibm/icu/impl/number/NumberStringBuilder;IILcom/ibm/icu/text/NumberFormat$Field;)I

    move-result v0

    return v0
.end method

.method public export(Lcom/ibm/icu/impl/number/Properties;)V
    .locals 1

    .prologue
    .line 128
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isStrong()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/modifiers/SimpleModifier;->strong:Z

    return v0
.end method

.method public length()I
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 35
    iget-object v0, p0, Lcom/ibm/icu/impl/number/modifiers/SimpleModifier;->compiledPattern:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ibm/icu/impl/number/modifiers/SimpleModifier;->field:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-static {v0, v1, v3, v3, v2}, Lcom/ibm/icu/impl/number/modifiers/SimpleModifier;->formatAsPrefixSuffix(Ljava/lang/String;Lcom/ibm/icu/impl/number/NumberStringBuilder;IILcom/ibm/icu/text/NumberFormat$Field;)I

    move-result v0

    return v0
.end method
