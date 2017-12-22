.class Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;
.super Ljava/lang/Object;
.source "TimeZoneGenericNames.java"

# interfaces
.implements Lcom/ibm/icu/impl/TextTrieMap$ResultHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ibm/icu/impl/TextTrieMap$ResultHandler",
        "<",
        "Lcom/ibm/icu/impl/TimeZoneGenericNames$NameInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private _matches:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;",
            ">;"
        }
    .end annotation
.end field

.field private _maxMatchLen:I

.field private _types:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 644
    iput-object p1, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_types:Ljava/util/EnumSet;

    .line 645
    return-void
.end method


# virtual methods
.method public getMatches()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 674
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_matches:Ljava/util/Collection;

    return-object v0
.end method

.method public getMaxMatchLen()I
    .locals 1

    .prologue
    .line 682
    iget v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_maxMatchLen:I

    return v0
.end method

.method public handlePrefixMatch(ILjava/util/Iterator;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Iterator",
            "<",
            "Lcom/ibm/icu/impl/TimeZoneGenericNames$NameInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 652
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 653
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/TimeZoneGenericNames$NameInfo;

    .line 654
    iget-object v1, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_types:Ljava/util/EnumSet;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_types:Ljava/util/EnumSet;

    iget-object v2, v0, Lcom/ibm/icu/impl/TimeZoneGenericNames$NameInfo;->type:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 657
    :cond_1
    new-instance v1, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;

    iget-object v2, v0, Lcom/ibm/icu/impl/TimeZoneGenericNames$NameInfo;->type:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    iget-object v0, v0, Lcom/ibm/icu/impl/TimeZoneGenericNames$NameInfo;->tzID:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, p1, v3}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;-><init>(Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;Ljava/lang/String;ILcom/ibm/icu/impl/TimeZoneGenericNames$1;)V

    .line 658
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_matches:Ljava/util/Collection;

    if-nez v0, :cond_2

    .line 659
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_matches:Ljava/util/Collection;

    .line 661
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_matches:Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 662
    iget v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_maxMatchLen:I

    if-le p1, v0, :cond_0

    .line 663
    iput p1, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_maxMatchLen:I

    goto :goto_0

    .line 666
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public resetResults()V
    .locals 1

    .prologue
    .line 689
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_matches:Ljava/util/Collection;

    .line 690
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_maxMatchLen:I

    .line 691
    return-void
.end method
