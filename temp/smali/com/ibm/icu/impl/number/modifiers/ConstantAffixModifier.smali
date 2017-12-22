.class public Lcom/ibm/icu/impl/number/modifiers/ConstantAffixModifier;
.super Lcom/ibm/icu/impl/number/Modifier$BaseModifier;
.source "ConstantAffixModifier.java"

# interfaces
.implements Lcom/ibm/icu/impl/number/Modifier$AffixModifier;


# static fields
.field public static final EMPTY:Lcom/ibm/icu/impl/number/Modifier$AffixModifier;


# instance fields
.field private final field:Lcom/ibm/icu/text/NumberFormat$Field;

.field private final prefix:Ljava/lang/String;

.field private final strong:Z

.field private final suffix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/ibm/icu/impl/number/modifiers/ConstantAffixModifier;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/modifiers/ConstantAffixModifier;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/number/modifiers/ConstantAffixModifier;->EMPTY:Lcom/ibm/icu/impl/number/Modifier$AffixModifier;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/Modifier$BaseModifier;-><init>()V

    .line 47
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ibm/icu/impl/number/modifiers/ConstantAffixModifier;->prefix:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ibm/icu/impl/number/modifiers/ConstantAffixModifier;->suffix:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/impl/number/modifiers/ConstantAffixModifier;->field:Lcom/ibm/icu/text/NumberFormat$Field;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/modifiers/ConstantAffixModifier;->strong:Z

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/text/NumberFormat$Field;Z)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/Modifier$BaseModifier;-><init>()V

    .line 37
    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    :cond_0
    iput-object p1, p0, Lcom/ibm/icu/impl/number/modifiers/ConstantAffixModifier;->prefix:Ljava/lang/String;

    .line 38
    if-nez p2, :cond_1

    const-string/jumbo p2, ""

    :cond_1
    iput-object p2, p0, Lcom/ibm/icu/impl/number/modifiers/ConstantAffixModifier;->suffix:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/ibm/icu/impl/number/modifiers/ConstantAffixModifier;->field:Lcom/ibm/icu/text/NumberFormat$Field;

    .line 40
    iput-boolean p4, p0, Lcom/ibm/icu/impl/number/modifiers/ConstantAffixModifier;->strong:Z

    .line 41
    return-void
.end method


# virtual methods
.method public apply(Lcom/ibm/icu/impl/number/NumberStringBuilder;II)I
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/ibm/icu/impl/number/modifiers/ConstantAffixModifier;->suffix:Ljava/lang/String;

    iget-object v1, p0, Lcom/ibm/icu/impl/number/modifiers/ConstantAffixModifier;->field:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {p1, p3, v0, v1}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->insert(ILjava/lang/CharSequence;Lcom/ibm/icu/text/NumberFormat$Field;)I

    move-result v0

    .line 57
    iget-object v1, p0, Lcom/ibm/icu/impl/number/modifiers/ConstantAffixModifier;->prefix:Ljava/lang/String;

    iget-object v2, p0, Lcom/ibm/icu/impl/number/modifiers/ConstantAffixModifier;->field:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {p1, p2, v1, v2}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->insert(ILjava/lang/CharSequence;Lcom/ibm/icu/text/NumberFormat$Field;)I

    move-result v1

    add-int/2addr v0, v1

    .line 58
    return v0
.end method

.method public export(Lcom/ibm/icu/impl/number/Properties;)V
    .locals 1

    .prologue
    .line 103
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/ibm/icu/impl/number/modifiers/ConstantAffixModifier;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/ibm/icu/impl/number/modifiers/ConstantAffixModifier;->suffix:Ljava/lang/String;

    return-object v0
.end method

.method public isStrong()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/modifiers/ConstantAffixModifier;->strong:Z

    return v0
.end method

.method public length()I
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ibm/icu/impl/number/modifiers/ConstantAffixModifier;->prefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/ibm/icu/impl/number/modifiers/ConstantAffixModifier;->suffix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 97
    const-string/jumbo v0, "<ConstantAffixModifier(%d) prefix:\'%s\' suffix:\'%s\'>"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 98
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/modifiers/ConstantAffixModifier;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/ibm/icu/impl/number/modifiers/ConstantAffixModifier;->prefix:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/ibm/icu/impl/number/modifiers/ConstantAffixModifier;->suffix:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 97
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
