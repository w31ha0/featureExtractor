.class Lcom/ibm/icu/impl/number/Parse$AffixHolder;
.super Ljava/lang/Object;
.source "Parse.java"


# static fields
.field static final EMPTY_NEGATIVE:Lcom/ibm/icu/impl/number/Parse$AffixHolder;

.field static final EMPTY_POSITIVE:Lcom/ibm/icu/impl/number/Parse$AffixHolder;


# instance fields
.field final negative:Z

.field final p:Ljava/lang/String;

.field final s:Ljava/lang/String;

.field final strings:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 792
    new-instance v0, Lcom/ibm/icu/impl/number/Parse$AffixHolder;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/ibm/icu/impl/number/Parse$AffixHolder;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/ibm/icu/impl/number/Parse$AffixHolder;->EMPTY_POSITIVE:Lcom/ibm/icu/impl/number/Parse$AffixHolder;

    .line 793
    new-instance v0, Lcom/ibm/icu/impl/number/Parse$AffixHolder;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v2, v4, v4}, Lcom/ibm/icu/impl/number/Parse$AffixHolder;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/ibm/icu/impl/number/Parse$AffixHolder;->EMPTY_NEGATIVE:Lcom/ibm/icu/impl/number/Parse$AffixHolder;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .prologue
    .line 866
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 867
    iput-object p1, p0, Lcom/ibm/icu/impl/number/Parse$AffixHolder;->p:Ljava/lang/String;

    .line 868
    iput-object p2, p0, Lcom/ibm/icu/impl/number/Parse$AffixHolder;->s:Ljava/lang/String;

    .line 869
    iput-boolean p3, p0, Lcom/ibm/icu/impl/number/Parse$AffixHolder;->strings:Z

    .line 870
    iput-boolean p4, p0, Lcom/ibm/icu/impl/number/Parse$AffixHolder;->negative:Z

    .line 871
    return-void
.end method

.method static addToState(Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$IProperties;)V
    .locals 5

    .prologue
    .line 796
    invoke-static {p1}, Lcom/ibm/icu/impl/number/Parse$AffixHolder;->fromPropertiesPositivePattern(Lcom/ibm/icu/impl/number/Parse$IProperties;)Lcom/ibm/icu/impl/number/Parse$AffixHolder;

    move-result-object v0

    .line 797
    invoke-static {p1}, Lcom/ibm/icu/impl/number/Parse$AffixHolder;->fromPropertiesNegativePattern(Lcom/ibm/icu/impl/number/Parse$IProperties;)Lcom/ibm/icu/impl/number/Parse$AffixHolder;

    move-result-object v1

    .line 798
    invoke-static {p1}, Lcom/ibm/icu/impl/number/Parse$AffixHolder;->fromPropertiesPositiveString(Lcom/ibm/icu/impl/number/Parse$IProperties;)Lcom/ibm/icu/impl/number/Parse$AffixHolder;

    move-result-object v2

    .line 799
    invoke-static {p1}, Lcom/ibm/icu/impl/number/Parse$AffixHolder;->fromPropertiesNegativeString(Lcom/ibm/icu/impl/number/Parse$IProperties;)Lcom/ibm/icu/impl/number/Parse$AffixHolder;

    move-result-object v3

    .line 800
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/ibm/icu/impl/number/Parse$ParserState;->affixHolders:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 801
    :cond_0
    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/ibm/icu/impl/number/Parse$ParserState;->affixHolders:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 802
    :cond_1
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/ibm/icu/impl/number/Parse$ParserState;->affixHolders:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 803
    :cond_2
    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/ibm/icu/impl/number/Parse$ParserState;->affixHolders:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 804
    :cond_3
    return-void
.end method

.method static fromPropertiesNegativePattern(Lcom/ibm/icu/impl/number/Parse$IProperties;)Lcom/ibm/icu/impl/number/Parse$AffixHolder;
    .locals 4

    .prologue
    .line 830
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/Parse$IProperties;->getNegativePrefixPattern()Ljava/lang/String;

    move-result-object v1

    .line 831
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/Parse$IProperties;->getNegativeSuffixPattern()Ljava/lang/String;

    move-result-object v0

    .line 832
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 833
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/Parse$IProperties;->getPositivePrefixPattern()Ljava/lang/String;

    move-result-object v1

    .line 834
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/Parse$IProperties;->getPositiveSuffixPattern()Ljava/lang/String;

    move-result-object v0

    .line 835
    if-nez v1, :cond_1

    .line 836
    const-string/jumbo v1, "-"

    .line 841
    :cond_0
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/ibm/icu/impl/number/Parse$AffixHolder;->getInstance(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/ibm/icu/impl/number/Parse$AffixHolder;

    move-result-object v0

    return-object v0

    .line 838
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static fromPropertiesNegativeString(Lcom/ibm/icu/impl/number/Parse$IProperties;)Lcom/ibm/icu/impl/number/Parse$AffixHolder;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 852
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/Parse$IProperties;->getNegativePrefix()Ljava/lang/String;

    move-result-object v0

    .line 853
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/Parse$IProperties;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v1

    .line 854
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 855
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0, v1, v2, v2}, Lcom/ibm/icu/impl/number/Parse$AffixHolder;->getInstance(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/ibm/icu/impl/number/Parse$AffixHolder;

    move-result-object v0

    goto :goto_0
.end method

.method static fromPropertiesPositivePattern(Lcom/ibm/icu/impl/number/Parse$IProperties;)Lcom/ibm/icu/impl/number/Parse$AffixHolder;
    .locals 9

    .prologue
    const/16 v8, 0x2b

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v7, -0x1

    .line 807
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/Parse$IProperties;->getPositivePrefixPattern()Ljava/lang/String;

    move-result-object v0

    .line 808
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/Parse$IProperties;->getPositiveSuffixPattern()Ljava/lang/String;

    move-result-object v4

    .line 809
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/Parse$IProperties;->getSignAlwaysShown()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 812
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/Parse$IProperties;->getNegativePrefixPattern()Ljava/lang/String;

    move-result-object v3

    .line 813
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/Parse$IProperties;->getNegativeSuffixPattern()Ljava/lang/String;

    move-result-object v5

    .line 814
    invoke-static {v3, v7}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->containsType(Ljava/lang/CharSequence;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 816
    invoke-static {v3, v7, v8}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->replaceType(Ljava/lang/CharSequence;IC)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    move v0, v1

    .line 818
    :goto_0
    invoke-static {v5, v7}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->containsType(Ljava/lang/CharSequence;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 820
    invoke-static {v5, v7, v8}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->replaceType(Ljava/lang/CharSequence;IC)Ljava/lang/String;

    move-result-object v0

    .line 822
    :goto_1
    if-nez v1, :cond_0

    .line 823
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "+"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 826
    :cond_0
    :goto_2
    invoke-static {v3, v0, v2, v2}, Lcom/ibm/icu/impl/number/Parse$AffixHolder;->getInstance(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/ibm/icu/impl/number/Parse$AffixHolder;

    move-result-object v0

    return-object v0

    :cond_1
    move v1, v0

    move-object v0, v4

    goto :goto_1

    :cond_2
    move-object v3, v0

    move v0, v2

    goto :goto_0

    :cond_3
    move-object v3, v0

    move-object v0, v4

    goto :goto_2
.end method

.method static fromPropertiesPositiveString(Lcom/ibm/icu/impl/number/Parse$IProperties;)Lcom/ibm/icu/impl/number/Parse$AffixHolder;
    .locals 4

    .prologue
    .line 845
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/Parse$IProperties;->getPositivePrefix()Ljava/lang/String;

    move-result-object v0

    .line 846
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/Parse$IProperties;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v1

    .line 847
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 848
    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/ibm/icu/impl/number/Parse$AffixHolder;->getInstance(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/ibm/icu/impl/number/Parse$AffixHolder;

    move-result-object v0

    goto :goto_0
.end method

.method static getInstance(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/ibm/icu/impl/number/Parse$AffixHolder;
    .locals 1

    .prologue
    .line 859
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    sget-object v0, Lcom/ibm/icu/impl/number/Parse$AffixHolder;->EMPTY_NEGATIVE:Lcom/ibm/icu/impl/number/Parse$AffixHolder;

    .line 863
    :goto_0
    return-object v0

    .line 859
    :cond_0
    sget-object v0, Lcom/ibm/icu/impl/number/Parse$AffixHolder;->EMPTY_POSITIVE:Lcom/ibm/icu/impl/number/Parse$AffixHolder;

    goto :goto_0

    .line 860
    :cond_1
    if-nez p0, :cond_2

    const-string/jumbo p0, ""

    .line 861
    :cond_2
    if-nez p1, :cond_3

    const-string/jumbo p1, ""

    .line 862
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    if-eqz p3, :cond_4

    sget-object v0, Lcom/ibm/icu/impl/number/Parse$AffixHolder;->EMPTY_NEGATIVE:Lcom/ibm/icu/impl/number/Parse$AffixHolder;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/ibm/icu/impl/number/Parse$AffixHolder;->EMPTY_POSITIVE:Lcom/ibm/icu/impl/number/Parse$AffixHolder;

    goto :goto_0

    .line 863
    :cond_5
    new-instance v0, Lcom/ibm/icu/impl/number/Parse$AffixHolder;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ibm/icu/impl/number/Parse$AffixHolder;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 875
    if-nez p1, :cond_1

    .line 883
    :cond_0
    :goto_0
    return v0

    .line 876
    :cond_1
    if-ne p0, p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 877
    :cond_2
    instance-of v2, p1, Lcom/ibm/icu/impl/number/Parse$AffixHolder;

    if-eqz v2, :cond_0

    .line 878
    check-cast p1, Lcom/ibm/icu/impl/number/Parse$AffixHolder;

    .line 879
    iget-object v2, p0, Lcom/ibm/icu/impl/number/Parse$AffixHolder;->p:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/Parse$AffixHolder;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 880
    iget-object v2, p0, Lcom/ibm/icu/impl/number/Parse$AffixHolder;->s:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/Parse$AffixHolder;->s:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 881
    iget-boolean v2, p0, Lcom/ibm/icu/impl/number/Parse$AffixHolder;->strings:Z

    iget-boolean v3, p1, Lcom/ibm/icu/impl/number/Parse$AffixHolder;->strings:Z

    if-ne v2, v3, :cond_0

    .line 882
    iget-boolean v2, p0, Lcom/ibm/icu/impl/number/Parse$AffixHolder;->negative:Z

    iget-boolean v3, p1, Lcom/ibm/icu/impl/number/Parse$AffixHolder;->negative:Z

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 883
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 888
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Parse$AffixHolder;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/ibm/icu/impl/number/Parse$AffixHolder;->s:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 893
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 894
    const-string/jumbo v0, "{"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Parse$AffixHolder;->p:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    const-string/jumbo v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Parse$AffixHolder;->s:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    const-string/jumbo v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/Parse$AffixHolder;->strings:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x53

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 900
    const-string/jumbo v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 899
    :cond_0
    const/16 v0, 0x50

    goto :goto_0
.end method
