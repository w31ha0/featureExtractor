.class public Lcom/netflix/msl/io/MslArray;
.super Ljava/lang/Object;
.source "MslArray.java"


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/io/MslArray;->list:Ljava/util/List;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/io/MslArray;->list:Ljava/util/List;

    .line 72
    if-eqz p1, :cond_0

    .line 73
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 74
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/netflix/msl/io/MslArray;->put(ILjava/lang/Object;)Lcom/netflix/msl/io/MslArray;

    goto :goto_0

    .line 76
    :cond_0
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/io/MslArray;->list:Ljava/util/List;

    .line 58
    if-eqz p1, :cond_0

    .line 59
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 60
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v2}, Lcom/netflix/msl/io/MslArray;->put(ILjava/lang/Object;)Lcom/netflix/msl/io/MslArray;

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 765
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    .line 771
    :cond_0
    :goto_0
    return v0

    .line 766
    :cond_1
    instance-of v1, p1, Lcom/netflix/msl/io/MslArray;

    if-eqz v1, :cond_0

    .line 767
    check-cast p1, Lcom/netflix/msl/io/MslArray;

    .line 769
    :try_start_0
    invoke-static {p0, p1}, Lcom/netflix/msl/io/MslEncoderUtils;->equalArrays(Lcom/netflix/msl/io/MslArray;Lcom/netflix/msl/io/MslArray;)Z
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 770
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 93
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/msl/io/MslArray;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MslArray["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] is negative or exceeds array length."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/netflix/msl/io/MslArray;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 96
    if-nez v0, :cond_2

    .line 97
    new-instance v0, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MslArray["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] is null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_2
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_4

    .line 99
    new-instance v1, Lcom/netflix/msl/io/MslObject;

    check-cast v0, Ljava/util/Map;

    invoke-direct {v1, v0}, Lcom/netflix/msl/io/MslObject;-><init>(Ljava/util/Map;)V

    move-object v0, v1

    .line 104
    :cond_3
    :goto_0
    return-object v0

    .line 100
    :cond_4
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_5

    .line 101
    new-instance v1, Lcom/netflix/msl/io/MslArray;

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0}, Lcom/netflix/msl/io/MslArray;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    goto :goto_0

    .line 102
    :cond_5
    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 103
    new-instance v1, Lcom/netflix/msl/io/MslArray;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-direct {v1, v0}, Lcom/netflix/msl/io/MslArray;-><init>([Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public getBoolean(I)Z
    .locals 3

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lcom/netflix/msl/io/MslArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 119
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 120
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 121
    :cond_0
    new-instance v0, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MslArray["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] is not a boolean."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBytes(I)[B
    .locals 3

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Lcom/netflix/msl/io/MslArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 136
    instance-of v1, v0, [B

    if-eqz v1, :cond_0

    .line 137
    check-cast v0, [B

    check-cast v0, [B

    return-object v0

    .line 138
    :cond_0
    new-instance v0, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MslArray["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] is not binary data."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCollection()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 757
    iget-object v0, p0, Lcom/netflix/msl/io/MslArray;->list:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDouble(I)D
    .locals 3

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/netflix/msl/io/MslArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 153
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 154
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 155
    :cond_0
    new-instance v0, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MslArray["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] is not a number."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInt(I)I
    .locals 3

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lcom/netflix/msl/io/MslArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 170
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 171
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0

    .line 172
    :cond_0
    new-instance v0, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MslArray["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] is not a number."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLong(I)J
    .locals 3

    .prologue
    .line 239
    invoke-virtual {p0, p1}, Lcom/netflix/msl/io/MslArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 240
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 241
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 242
    :cond_0
    new-instance v0, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MslArray["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] is not a number."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMslArray(I)Lcom/netflix/msl/io/MslArray;
    .locals 3

    .prologue
    .line 187
    invoke-virtual {p0, p1}, Lcom/netflix/msl/io/MslArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 188
    instance-of v1, v0, Lcom/netflix/msl/io/MslArray;

    if-eqz v1, :cond_0

    .line 189
    check-cast v0, Lcom/netflix/msl/io/MslArray;

    .line 193
    :goto_0
    return-object v0

    .line 190
    :cond_0
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_1

    .line 191
    new-instance v1, Lcom/netflix/msl/io/MslArray;

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0}, Lcom/netflix/msl/io/MslArray;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    goto :goto_0

    .line 192
    :cond_1
    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 193
    new-instance v1, Lcom/netflix/msl/io/MslArray;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-direct {v1, v0}, Lcom/netflix/msl/io/MslArray;-><init>([Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    .line 194
    :cond_2
    new-instance v0, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MslArray["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] is not a MslArray."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMslObject(ILcom/netflix/msl/io/MslEncoderFactory;)Lcom/netflix/msl/io/MslObject;
    .locals 4

    .prologue
    .line 209
    invoke-virtual {p0, p1}, Lcom/netflix/msl/io/MslArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 210
    instance-of v1, v0, Lcom/netflix/msl/io/MslObject;

    if-eqz v1, :cond_0

    .line 211
    check-cast v0, Lcom/netflix/msl/io/MslObject;

    .line 220
    :goto_0
    return-object v0

    .line 216
    :cond_0
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 217
    new-instance v1, Lcom/netflix/msl/io/MslObject;

    check-cast v0, Ljava/util/Map;

    invoke-direct {v1, v0}, Lcom/netflix/msl/io/MslObject;-><init>(Ljava/util/Map;)V

    move-object v0, v1

    goto :goto_0

    .line 218
    :cond_1
    instance-of v1, v0, [B

    if-eqz v1, :cond_2

    .line 220
    :try_start_0
    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {p2, v0}, Lcom/netflix/msl/io/MslEncoderFactory;->parseObject([B)Lcom/netflix/msl/io/MslObject;
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    new-instance v1, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MslObject["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] is not a MslObject."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 225
    :cond_2
    new-instance v0, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MslArray["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] is not a MslObject."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 256
    invoke-virtual {p0, p1}, Lcom/netflix/msl/io/MslArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 257
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 258
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 259
    :cond_0
    new-instance v0, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MslArray["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] is not a string."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 780
    invoke-static {p0}, Lcom/netflix/msl/io/MslEncoderUtils;->hashArray(Lcom/netflix/msl/io/MslArray;)I

    move-result v0

    return v0
.end method

.method public isNull(I)Z
    .locals 3

    .prologue
    .line 271
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/msl/io/MslArray;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 272
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MslArray["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] is negative or exceeds array length."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/netflix/msl/io/MslArray;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public opt(I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 297
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/msl/io/MslArray;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 298
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MslArray["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] is negative or exceeds array length."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/netflix/msl/io/MslArray;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 301
    :try_start_0
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_3

    .line 302
    new-instance v1, Lcom/netflix/msl/io/MslObject;

    check-cast v0, Ljava/util/Map;

    invoke-direct {v1, v0}, Lcom/netflix/msl/io/MslObject;-><init>(Ljava/util/Map;)V

    move-object v0, v1

    .line 310
    :cond_2
    :goto_0
    return-object v0

    .line 303
    :cond_3
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_4

    .line 304
    new-instance v1, Lcom/netflix/msl/io/MslArray;

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0}, Lcom/netflix/msl/io/MslArray;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    goto :goto_0

    .line 305
    :cond_4
    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 306
    new-instance v1, Lcom/netflix/msl/io/MslArray;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-direct {v1, v0}, Lcom/netflix/msl/io/MslArray;-><init>([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 307
    :catch_0
    move-exception v0

    .line 308
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public optBoolean(I)Z
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/netflix/msl/io/MslArray;->optBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public optBoolean(IZ)Z
    .locals 2

    .prologue
    .line 337
    invoke-virtual {p0, p1}, Lcom/netflix/msl/io/MslArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 338
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 339
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 340
    :cond_0
    return p2
.end method

.method public optBytes(I)[B
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-virtual {p0, p1, v0}, Lcom/netflix/msl/io/MslArray;->optBytes(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method public optBytes(I[B)[B
    .locals 2

    .prologue
    .line 368
    invoke-virtual {p0, p1}, Lcom/netflix/msl/io/MslArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 369
    instance-of v1, v0, [B

    if-eqz v1, :cond_0

    .line 370
    check-cast v0, [B

    check-cast v0, [B

    .line 371
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public optDouble(I)D
    .locals 2

    .prologue
    .line 384
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    invoke-virtual {p0, p1, v0, v1}, Lcom/netflix/msl/io/MslArray;->optDouble(ID)D

    move-result-wide v0

    return-wide v0
.end method

.method public optDouble(ID)D
    .locals 2

    .prologue
    .line 398
    invoke-virtual {p0, p1}, Lcom/netflix/msl/io/MslArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 399
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 400
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p2

    .line 401
    :cond_0
    return-wide p2
.end method

.method public optInt(I)I
    .locals 1

    .prologue
    .line 414
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/netflix/msl/io/MslArray;->optInt(II)I

    move-result v0

    return v0
.end method

.method public optInt(II)I
    .locals 2

    .prologue
    .line 428
    invoke-virtual {p0, p1}, Lcom/netflix/msl/io/MslArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 429
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 430
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 431
    :cond_0
    return p2
.end method

.method public optLong(I)J
    .locals 2

    .prologue
    .line 504
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/netflix/msl/io/MslArray;->optLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public optLong(IJ)J
    .locals 2

    .prologue
    .line 518
    invoke-virtual {p0, p1}, Lcom/netflix/msl/io/MslArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 519
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 520
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    .line 521
    :cond_0
    return-wide p2
.end method

.method public optMslArray(I)Lcom/netflix/msl/io/MslArray;
    .locals 2

    .prologue
    .line 445
    invoke-virtual {p0, p1}, Lcom/netflix/msl/io/MslArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 446
    instance-of v1, v0, Lcom/netflix/msl/io/MslArray;

    if-eqz v1, :cond_0

    .line 447
    check-cast v0, Lcom/netflix/msl/io/MslArray;

    .line 452
    :goto_0
    return-object v0

    .line 448
    :cond_0
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_1

    .line 449
    new-instance v1, Lcom/netflix/msl/io/MslArray;

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0}, Lcom/netflix/msl/io/MslArray;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    goto :goto_0

    .line 450
    :cond_1
    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 451
    new-instance v1, Lcom/netflix/msl/io/MslArray;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-direct {v1, v0}, Lcom/netflix/msl/io/MslArray;-><init>([Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    .line 452
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public optMslObject(ILcom/netflix/msl/io/MslEncoderFactory;)Lcom/netflix/msl/io/MslObject;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 466
    invoke-virtual {p0, p1}, Lcom/netflix/msl/io/MslArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 467
    instance-of v1, v0, Lcom/netflix/msl/io/MslObject;

    if-eqz v1, :cond_0

    .line 468
    check-cast v0, Lcom/netflix/msl/io/MslObject;

    .line 491
    :goto_0
    return-object v0

    .line 479
    :cond_0
    :try_start_0
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 480
    new-instance v1, Lcom/netflix/msl/io/MslObject;

    check-cast v0, Ljava/util/Map;

    invoke-direct {v1, v0}, Lcom/netflix/msl/io/MslObject;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 481
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 482
    goto :goto_0

    .line 484
    :cond_1
    instance-of v1, v0, [B

    if-eqz v1, :cond_2

    .line 486
    :try_start_1
    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {p2, v0}, Lcom/netflix/msl/io/MslEncoderFactory;->parseObject([B)Lcom/netflix/msl/io/MslObject;
    :try_end_1
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 487
    :catch_1
    move-exception v0

    move-object v0, v2

    .line 488
    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 491
    goto :goto_0
.end method

.method public optString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 534
    const-string/jumbo v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/netflix/msl/io/MslArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optString(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 548
    invoke-virtual {p0, p1}, Lcom/netflix/msl/io/MslArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 549
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 550
    check-cast v0, Ljava/lang/String;

    .line 551
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public put(ILjava/lang/Object;)Lcom/netflix/msl/io/MslArray;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 568
    if-ge p1, v3, :cond_0

    .line 569
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MslArray["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] is negative."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 573
    :cond_0
    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    instance-of v0, p2, [B

    if-nez v0, :cond_1

    instance-of v0, p2, Ljava/lang/Number;

    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/netflix/msl/io/MslObject;

    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/netflix/msl/io/MslArray;

    if-nez v0, :cond_1

    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/netflix/msl/io/MslEncodable;

    if-eqz v0, :cond_2

    .line 598
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netflix/msl/io/MslArray;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    if-ge v0, p1, :cond_8

    .line 599
    iget-object v2, p0, Lcom/netflix/msl/io/MslArray;->list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 583
    :cond_2
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 584
    new-instance v0, Lcom/netflix/msl/io/MslObject;

    check-cast p2, Ljava/util/Map;

    invoke-direct {v0, p2}, Lcom/netflix/msl/io/MslObject;-><init>(Ljava/util/Map;)V

    move-object p2, v0

    goto :goto_0

    .line 585
    :cond_3
    instance-of v0, p2, Ljava/util/Collection;

    if-eqz v0, :cond_4

    .line 586
    new-instance v0, Lcom/netflix/msl/io/MslArray;

    check-cast p2, Ljava/util/Collection;

    invoke-direct {v0, p2}, Lcom/netflix/msl/io/MslArray;-><init>(Ljava/util/Collection;)V

    move-object p2, v0

    goto :goto_0

    .line 587
    :cond_4
    instance-of v0, p2, [Ljava/lang/Object;

    if-eqz v0, :cond_5

    .line 588
    new-instance v0, Lcom/netflix/msl/io/MslArray;

    check-cast p2, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    invoke-direct {v0, p2}, Lcom/netflix/msl/io/MslArray;-><init>([Ljava/lang/Object;)V

    move-object p2, v0

    goto :goto_0

    .line 589
    :cond_5
    instance-of v0, p2, Ljava/lang/Enum;

    if-eqz v0, :cond_6

    .line 590
    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 591
    :cond_6
    if-nez p2, :cond_7

    move-object p2, v1

    .line 592
    goto :goto_0

    .line 594
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Value ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] is an unsupported type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 602
    :cond_8
    if-eq p1, v3, :cond_9

    iget-object v0, p0, Lcom/netflix/msl/io/MslArray;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_a

    .line 603
    :cond_9
    iget-object v0, p0, Lcom/netflix/msl/io/MslArray;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    :goto_2
    return-object p0

    .line 608
    :cond_a
    iget-object v0, p0, Lcom/netflix/msl/io/MslArray;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public putBoolean(ILjava/lang/Boolean;)Lcom/netflix/msl/io/MslArray;
    .locals 1

    .prologue
    .line 624
    invoke-virtual {p0, p1, p2}, Lcom/netflix/msl/io/MslArray;->put(ILjava/lang/Object;)Lcom/netflix/msl/io/MslArray;

    move-result-object v0

    return-object v0
.end method

.method public putBytes(I[B)Lcom/netflix/msl/io/MslArray;
    .locals 1

    .prologue
    .line 639
    invoke-virtual {p0, p1, p2}, Lcom/netflix/msl/io/MslArray;->put(ILjava/lang/Object;)Lcom/netflix/msl/io/MslArray;

    move-result-object v0

    return-object v0
.end method

.method public putCollection(ILjava/util/Collection;)Lcom/netflix/msl/io/MslArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/netflix/msl/io/MslArray;"
        }
    .end annotation

    .prologue
    .line 655
    invoke-virtual {p0, p1, p2}, Lcom/netflix/msl/io/MslArray;->put(ILjava/lang/Object;)Lcom/netflix/msl/io/MslArray;

    move-result-object v0

    return-object v0
.end method

.method public putDouble(ILjava/lang/Double;)Lcom/netflix/msl/io/MslArray;
    .locals 1

    .prologue
    .line 670
    invoke-virtual {p0, p1, p2}, Lcom/netflix/msl/io/MslArray;->put(ILjava/lang/Object;)Lcom/netflix/msl/io/MslArray;

    move-result-object v0

    return-object v0
.end method

.method public putInt(ILjava/lang/Integer;)Lcom/netflix/msl/io/MslArray;
    .locals 1

    .prologue
    .line 685
    invoke-virtual {p0, p1, p2}, Lcom/netflix/msl/io/MslArray;->put(ILjava/lang/Object;)Lcom/netflix/msl/io/MslArray;

    move-result-object v0

    return-object v0
.end method

.method public putLong(ILjava/lang/Long;)Lcom/netflix/msl/io/MslArray;
    .locals 1

    .prologue
    .line 700
    invoke-virtual {p0, p1, p2}, Lcom/netflix/msl/io/MslArray;->put(ILjava/lang/Object;)Lcom/netflix/msl/io/MslArray;

    move-result-object v0

    return-object v0
.end method

.method public putMap(ILjava/util/Map;)Lcom/netflix/msl/io/MslArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/netflix/msl/io/MslArray;"
        }
    .end annotation

    .prologue
    .line 716
    new-instance v0, Lcom/netflix/msl/io/MslObject;

    invoke-direct {v0, p2}, Lcom/netflix/msl/io/MslObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, p1, v0}, Lcom/netflix/msl/io/MslArray;->put(ILjava/lang/Object;)Lcom/netflix/msl/io/MslArray;

    move-result-object v0

    return-object v0
.end method

.method public putString(ILjava/lang/String;)Lcom/netflix/msl/io/MslArray;
    .locals 1

    .prologue
    .line 731
    invoke-virtual {p0, p1, p2}, Lcom/netflix/msl/io/MslArray;->put(ILjava/lang/Object;)Lcom/netflix/msl/io/MslArray;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 743
    if-lt p1, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/msl/io/MslArray;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 744
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MslArray["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] is negative or exceeds array length."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 745
    :cond_1
    if-ne p1, v1, :cond_2

    iget-object v0, p0, Lcom/netflix/msl/io/MslArray;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    .line 746
    :cond_2
    invoke-virtual {p0, p1}, Lcom/netflix/msl/io/MslArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 747
    iget-object v1, p0, Lcom/netflix/msl/io/MslArray;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 748
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/netflix/msl/io/MslArray;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 789
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 791
    iget-object v1, p0, Lcom/netflix/msl/io/MslArray;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 792
    const/16 v1, 0x5b

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 794
    if-ne v4, v2, :cond_1

    .line 795
    iget-object v1, p0, Lcom/netflix/msl/io/MslArray;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/msl/io/MslEncoderFactory;->stringify(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    :cond_0
    const/16 v0, 0x5d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 806
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 796
    :cond_1
    if-eqz v4, :cond_0

    move v1, v0

    .line 797
    :goto_0
    if-ge v0, v4, :cond_0

    .line 798
    if-eqz v1, :cond_2

    .line 799
    const/16 v1, 0x2c

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 801
    :cond_2
    iget-object v1, p0, Lcom/netflix/msl/io/MslArray;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/msl/io/MslEncoderFactory;->stringify(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0
.end method
