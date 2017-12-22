.class Lcom/ibm/icu/text/PluralRules$RuleList;
.super Ljava/lang/Object;
.source "PluralRules.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private hasExplicitBoundingInfo:Z

.field private final rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ibm/icu/text/PluralRules$Rule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1803
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ibm/icu/text/PluralRules$RuleList;->hasExplicitBoundingInfo:Z

    .line 1805
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/text/PluralRules$1;)V
    .locals 0

    .prologue
    .line 1802
    invoke-direct {p0}, Lcom/ibm/icu/text/PluralRules$RuleList;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/ibm/icu/text/PluralRules$RuleList;)Z
    .locals 1

    .prologue
    .line 1802
    iget-boolean v0, p0, Lcom/ibm/icu/text/PluralRules$RuleList;->hasExplicitBoundingInfo:Z

    return v0
.end method

.method static synthetic access$202(Lcom/ibm/icu/text/PluralRules$RuleList;Z)Z
    .locals 0

    .prologue
    .line 1802
    iput-boolean p1, p0, Lcom/ibm/icu/text/PluralRules$RuleList;->hasExplicitBoundingInfo:Z

    return p1
.end method

.method private selectRule(Lcom/ibm/icu/text/PluralRules$IFixedDecimal;)Lcom/ibm/icu/text/PluralRules$Rule;
    .locals 3

    .prologue
    .line 1836
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/PluralRules$Rule;

    .line 1837
    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/PluralRules$Rule;->appliesTo(Lcom/ibm/icu/text/PluralRules$IFixedDecimal;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1841
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addRule(Lcom/ibm/icu/text/PluralRules$Rule;)Lcom/ibm/icu/text/PluralRules$RuleList;
    .locals 4

    .prologue
    .line 1808
    invoke-virtual {p1}, Lcom/ibm/icu/text/PluralRules$Rule;->getKeyword()Ljava/lang/String;

    move-result-object v1

    .line 1809
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/PluralRules$Rule;

    .line 1810
    invoke-virtual {v0}, Lcom/ibm/icu/text/PluralRules$Rule;->getKeyword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1811
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Duplicate keyword: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1814
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1815
    return-object p0
.end method

.method public finish()Lcom/ibm/icu/text/PluralRules$RuleList;
    .locals 5

    .prologue
    .line 1820
    const/4 v1, 0x0

    .line 1821
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1822
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/PluralRules$Rule;

    .line 1823
    const-string/jumbo v3, "other"

    invoke-virtual {v0}, Lcom/ibm/icu/text/PluralRules$Rule;->getKeyword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1825
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    :goto_1
    move-object v1, v0

    .line 1827
    goto :goto_0

    .line 1828
    :cond_0
    if-nez v1, :cond_1

    .line 1829
    const-string/jumbo v0, "other:"

    invoke-static {v0}, Lcom/ibm/icu/text/PluralRules;->access$600(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$Rule;

    move-result-object v1

    .line 1831
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1832
    return-object p0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public getKeywords()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1853
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1854
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/PluralRules$Rule;

    .line 1855
    invoke-virtual {v0}, Lcom/ibm/icu/text/PluralRules$Rule;->getKeyword()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1859
    :cond_0
    return-object v1
.end method

.method public select(Lcom/ibm/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1845
    invoke-interface {p1}, Lcom/ibm/icu/text/PluralRules$IFixedDecimal;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/ibm/icu/text/PluralRules$IFixedDecimal;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1846
    :cond_0
    const-string/jumbo v0, "other"

    .line 1849
    :goto_0
    return-object v0

    .line 1848
    :cond_1
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/PluralRules$RuleList;->selectRule(Lcom/ibm/icu/text/PluralRules$IFixedDecimal;)Lcom/ibm/icu/text/PluralRules$Rule;

    move-result-object v0

    .line 1849
    invoke-virtual {v0}, Lcom/ibm/icu/text/PluralRules$Rule;->getKeyword()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1888
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1889
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/PluralRules$Rule;

    .line 1890
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1891
    const-string/jumbo v3, ";  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1893
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1895
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
