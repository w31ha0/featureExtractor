.class Lcom/netflix/mediaclient/util/MultiValuedHashMap$MultiValuedMapEntry;
.super Ljava/lang/Object;
.source "MultiValuedHashMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput-object p1, p0, Lcom/netflix/mediaclient/util/MultiValuedHashMap$MultiValuedMapEntry;->key:Ljava/lang/Object;

    .line 270
    iput-object p2, p0, Lcom/netflix/mediaclient/util/MultiValuedHashMap$MultiValuedMapEntry;->value:Ljava/lang/Object;

    .line 272
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 292
    if-ne p0, p1, :cond_1

    .line 298
    :cond_0
    :goto_0
    return v0

    .line 293
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 295
    :cond_3
    check-cast p1, Lcom/netflix/mediaclient/util/MultiValuedHashMap$MultiValuedMapEntry;

    .line 297
    iget-object v2, p0, Lcom/netflix/mediaclient/util/MultiValuedHashMap$MultiValuedMapEntry;->key:Ljava/lang/Object;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/netflix/mediaclient/util/MultiValuedHashMap$MultiValuedMapEntry;->key:Ljava/lang/Object;

    iget-object v3, p1, Lcom/netflix/mediaclient/util/MultiValuedHashMap$MultiValuedMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/netflix/mediaclient/util/MultiValuedHashMap$MultiValuedMapEntry;->key:Ljava/lang/Object;

    if-nez v2, :cond_4

    .line 298
    :cond_6
    iget-object v2, p0, Lcom/netflix/mediaclient/util/MultiValuedHashMap$MultiValuedMapEntry;->value:Ljava/lang/Object;

    if-eqz v2, :cond_7

    iget-object v0, p0, Lcom/netflix/mediaclient/util/MultiValuedHashMap$MultiValuedMapEntry;->value:Ljava/lang/Object;

    iget-object v1, p1, Lcom/netflix/mediaclient/util/MultiValuedHashMap$MultiValuedMapEntry;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_7
    iget-object v2, p1, Lcom/netflix/mediaclient/util/MultiValuedHashMap$MultiValuedMapEntry;->value:Ljava/lang/Object;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lcom/netflix/mediaclient/util/MultiValuedHashMap$MultiValuedMapEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Lcom/netflix/mediaclient/util/MultiValuedHashMap$MultiValuedMapEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 304
    iget-object v0, p0, Lcom/netflix/mediaclient/util/MultiValuedHashMap$MultiValuedMapEntry;->key:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/util/MultiValuedHashMap$MultiValuedMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 305
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/netflix/mediaclient/util/MultiValuedHashMap$MultiValuedMapEntry;->value:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/util/MultiValuedHashMap$MultiValuedMapEntry;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 306
    return v0

    :cond_1
    move v0, v1

    .line 304
    goto :goto_0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 286
    iput-object p1, p0, Lcom/netflix/mediaclient/util/MultiValuedHashMap$MultiValuedMapEntry;->value:Ljava/lang/Object;

    .line 287
    iget-object v0, p0, Lcom/netflix/mediaclient/util/MultiValuedHashMap$MultiValuedMapEntry;->value:Ljava/lang/Object;

    return-object v0
.end method
