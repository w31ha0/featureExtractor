.class public Lcom/netflix/cstatssamurai/HostnameCategoryResolver;
.super Ljava/lang/Object;
.source "HostnameCategoryResolver.java"


# static fields
.field private static final DEFAULT_INITIAL_CAPACITY:I = 0x10


# instance fields
.field private allCategories:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private patternCategoryMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netflix/cstatssamurai/HostnameCategoryResolver$PatternCategoryMapping;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/cstatssamurai/HostnameCategoryResolver;->patternCategoryMap:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 33
    const-class v1, [Lcom/netflix/cstatssamurai/CategoryHostnamesData;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/cstatssamurai/CategoryHostnamesData;

    .line 35
    new-instance v3, Ljava/util/HashSet;

    array-length v1, v0

    if-lez v1, :cond_0

    array-length v1, v0

    :goto_0
    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v3, p0, Lcom/netflix/cstatssamurai/HostnameCategoryResolver;->allCategories:Ljava/util/HashSet;

    .line 37
    array-length v4, v0

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v5, v0, v3

    .line 39
    if-eqz v5, :cond_1

    iget-object v1, v5, Lcom/netflix/cstatssamurai/CategoryHostnamesData;->hostnamepatterns:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 40
    iget-object v1, p0, Lcom/netflix/cstatssamurai/HostnameCategoryResolver;->allCategories:Ljava/util/HashSet;

    iget-object v6, v5, Lcom/netflix/cstatssamurai/CategoryHostnamesData;->category:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v6, v5, Lcom/netflix/cstatssamurai/CategoryHostnamesData;->hostnamepatterns:[Ljava/lang/String;

    array-length v7, v6

    move v1, v2

    :goto_2
    if-ge v1, v7, :cond_1

    aget-object v8, v6, v1

    .line 42
    iget-object v9, p0, Lcom/netflix/cstatssamurai/HostnameCategoryResolver;->patternCategoryMap:Ljava/util/ArrayList;

    new-instance v10, Lcom/netflix/cstatssamurai/HostnameCategoryResolver$PatternCategoryMapping;

    iget-object v11, v5, Lcom/netflix/cstatssamurai/CategoryHostnamesData;->category:Ljava/lang/String;

    invoke-direct {v10, p0, v8, v11}, Lcom/netflix/cstatssamurai/HostnameCategoryResolver$PatternCategoryMapping;-><init>(Lcom/netflix/cstatssamurai/HostnameCategoryResolver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 35
    :cond_0
    const/16 v1, 0x10

    goto :goto_0

    .line 37
    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 46
    :cond_2
    return-void
.end method


# virtual methods
.method public getCategories()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/netflix/cstatssamurai/HostnameCategoryResolver;->allCategories:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/netflix/cstatssamurai/HostnameCategoryResolver;->allCategories:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public resolveCategory(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 53
    const-string/jumbo v1, "NOMATCH"

    .line 56
    iget-object v0, p0, Lcom/netflix/cstatssamurai/HostnameCategoryResolver;->patternCategoryMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/cstatssamurai/HostnameCategoryResolver$PatternCategoryMapping;

    .line 57
    iget-object v3, v0, Lcom/netflix/cstatssamurai/HostnameCategoryResolver$PatternCategoryMapping;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 58
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 59
    iget-object v0, v0, Lcom/netflix/cstatssamurai/HostnameCategoryResolver$PatternCategoryMapping;->category:Ljava/lang/String;

    .line 63
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
