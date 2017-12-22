.class public Lcom/netflix/msl/io/MslObject;
.super Ljava/lang/Object;
.source "MslObject.java"


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/io/MslObject;->map:Ljava/util/Map;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/io/MslObject;->map:Ljava/util/Map;

    .line 63
    if-eqz p1, :cond_1

    .line 64
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 65
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Map key is not a string."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 68
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    goto :goto_0

    .line 71
    :cond_1
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 720
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    .line 726
    :cond_0
    :goto_0
    return v0

    .line 721
    :cond_1
    instance-of v1, p1, Lcom/netflix/msl/io/MslObject;

    if-eqz v1, :cond_0

    .line 722
    check-cast p1, Lcom/netflix/msl/io/MslObject;

    .line 724
    :try_start_0
    invoke-static {p0, p1}, Lcom/netflix/msl/io/MslEncoderUtils;->equalObjects(Lcom/netflix/msl/io/MslObject;Lcom/netflix/msl/io/MslObject;)Z
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 725
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/netflix/msl/io/MslObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 90
    if-nez v0, :cond_1

    .line 91
    new-instance v0, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MslObject["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/netflix/msl/io/MslEncoderFactory;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_1
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_3

    .line 93
    new-instance v1, Lcom/netflix/msl/io/MslObject;

    check-cast v0, Ljava/util/Map;

    invoke-direct {v1, v0}, Lcom/netflix/msl/io/MslObject;-><init>(Ljava/util/Map;)V

    move-object v0, v1

    .line 98
    :cond_2
    :goto_0
    return-object v0

    .line 94
    :cond_3
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_4

    .line 95
    new-instance v1, Lcom/netflix/msl/io/MslArray;

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0}, Lcom/netflix/msl/io/MslArray;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    goto :goto_0

    .line 96
    :cond_4
    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 97
    new-instance v1, Lcom/netflix/msl/io/MslArray;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-direct {v1, v0}, Lcom/netflix/msl/io/MslArray;-><init>([Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lcom/netflix/msl/io/MslObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 112
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 113
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 114
    :cond_0
    new-instance v0, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MslObject["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/netflix/msl/io/MslEncoderFactory;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] is not a boolean."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 3

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lcom/netflix/msl/io/MslObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 128
    instance-of v1, v0, [B

    if-eqz v1, :cond_0

    .line 129
    check-cast v0, [B

    check-cast v0, [B

    return-object v0

    .line 130
    :cond_0
    new-instance v0, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MslObject["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/netflix/msl/io/MslEncoderFactory;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] is not binary data."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 3

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lcom/netflix/msl/io/MslObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 144
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 145
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 146
    :cond_0
    new-instance v0, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MslObject["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/netflix/msl/io/MslEncoderFactory;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] is not a number."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Lcom/netflix/msl/io/MslObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 160
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 161
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0

    .line 162
    :cond_0
    new-instance v0, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MslObject["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/netflix/msl/io/MslEncoderFactory;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] is not a number."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getKeys()Ljava/util/Set;
    .locals 1
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
    .line 703
    iget-object v0, p0, Lcom/netflix/msl/io/MslObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 3

    .prologue
    .line 223
    invoke-virtual {p0, p1}, Lcom/netflix/msl/io/MslObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 224
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 225
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 226
    :cond_0
    new-instance v0, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MslObject["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/netflix/msl/io/MslEncoderFactory;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] is not a number."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 712
    iget-object v0, p0, Lcom/netflix/msl/io/MslObject;->map:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMslArray(Ljava/lang/String;)Lcom/netflix/msl/io/MslArray;
    .locals 3

    .prologue
    .line 175
    invoke-virtual {p0, p1}, Lcom/netflix/msl/io/MslObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 176
    instance-of v1, v0, Lcom/netflix/msl/io/MslArray;

    if-eqz v1, :cond_0

    .line 177
    check-cast v0, Lcom/netflix/msl/io/MslArray;

    .line 179
    :goto_0
    return-object v0

    .line 178
    :cond_0
    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 179
    new-instance v1, Lcom/netflix/msl/io/MslArray;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-direct {v1, v0}, Lcom/netflix/msl/io/MslArray;-><init>([Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    .line 180
    :cond_1
    new-instance v0, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MslObject["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/netflix/msl/io/MslEncoderFactory;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] is not a MslArray."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMslObject(Ljava/lang/String;Lcom/netflix/msl/io/MslEncoderFactory;)Lcom/netflix/msl/io/MslObject;
    .locals 3

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lcom/netflix/msl/io/MslObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 195
    instance-of v1, v0, Lcom/netflix/msl/io/MslObject;

    if-eqz v1, :cond_0

    .line 196
    check-cast v0, Lcom/netflix/msl/io/MslObject;

    .line 205
    :goto_0
    return-object v0

    .line 201
    :cond_0
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 202
    new-instance v1, Lcom/netflix/msl/io/MslObject;

    check-cast v0, Ljava/util/Map;

    invoke-direct {v1, v0}, Lcom/netflix/msl/io/MslObject;-><init>(Ljava/util/Map;)V

    move-object v0, v1

    goto :goto_0

    .line 203
    :cond_1
    instance-of v1, v0, [B

    if-eqz v1, :cond_2

    .line 205
    :try_start_0
    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {p2, v0}, Lcom/netflix/msl/io/MslEncoderFactory;->parseObject([B)Lcom/netflix/msl/io/MslObject;
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 206
    :catch_0
    move-exception v0

    .line 207
    new-instance v0, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MslObject["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/netflix/msl/io/MslEncoderFactory;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] is not a MslObject."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_2
    new-instance v0, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MslObject["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/netflix/msl/io/MslEncoderFactory;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] is not a MslObject."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 239
    invoke-virtual {p0, p1}, Lcom/netflix/msl/io/MslObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 240
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 241
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 242
    :cond_0
    new-instance v0, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MslObject["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/netflix/msl/io/MslEncoderFactory;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] is not a string."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public has(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 252
    if-nez p1, :cond_0

    .line 253
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/netflix/msl/io/MslObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 735
    invoke-static {p0}, Lcom/netflix/msl/io/MslEncoderUtils;->hashObject(Lcom/netflix/msl/io/MslObject;)I

    move-result v0

    return v0
.end method

.method public opt(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 267
    if-nez p1, :cond_0

    .line 268
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/netflix/msl/io/MslObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 271
    :try_start_0
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 272
    new-instance v1, Lcom/netflix/msl/io/MslObject;

    check-cast v0, Ljava/util/Map;

    invoke-direct {v1, v0}, Lcom/netflix/msl/io/MslObject;-><init>(Ljava/util/Map;)V

    move-object v0, v1

    .line 280
    :cond_1
    :goto_0
    return-object v0

    .line 273
    :cond_2
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_3

    .line 274
    new-instance v1, Lcom/netflix/msl/io/MslArray;

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0}, Lcom/netflix/msl/io/MslArray;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    goto :goto_0

    .line 275
    :cond_3
    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 276
    new-instance v1, Lcom/netflix/msl/io/MslArray;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-direct {v1, v0}, Lcom/netflix/msl/io/MslArray;-><init>([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public optBoolean(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/netflix/msl/io/MslObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public optBoolean(Ljava/lang/String;Z)Z
    .locals 2

    .prologue
    .line 305
    invoke-virtual {p0, p1}, Lcom/netflix/msl/io/MslObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 306
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 307
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 308
    :cond_0
    return p2
.end method

.method public optBytes(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-virtual {p0, p1, v0}, Lcom/netflix/msl/io/MslObject;->optBytes(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public optBytes(Ljava/lang/String;[B)[B
    .locals 2

    .prologue
    .line 333
    invoke-virtual {p0, p1}, Lcom/netflix/msl/io/MslObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 334
    instance-of v1, v0, [B

    if-eqz v1, :cond_0

    .line 335
    check-cast v0, [B

    check-cast v0, [B

    .line 336
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public optDouble(Ljava/lang/String;)D
    .locals 2

    .prologue
    .line 348
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    invoke-virtual {p0, p1, v0, v1}, Lcom/netflix/msl/io/MslObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public optDouble(Ljava/lang/String;D)D
    .locals 2

    .prologue
    .line 361
    invoke-virtual {p0, p1}, Lcom/netflix/msl/io/MslObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 362
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 363
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p2

    .line 364
    :cond_0
    return-wide p2
.end method

.method public optInt(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 376
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/netflix/msl/io/MslObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public optInt(Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 389
    invoke-virtual {p0, p1}, Lcom/netflix/msl/io/MslObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 390
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 391
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 392
    :cond_0
    return p2
.end method

.method public optLong(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 468
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/netflix/msl/io/MslObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public optLong(Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 481
    invoke-virtual {p0, p1}, Lcom/netflix/msl/io/MslObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 482
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 483
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    .line 484
    :cond_0
    return-wide p2
.end method

.method public optMslArray(Ljava/lang/String;)Lcom/netflix/msl/io/MslArray;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 406
    invoke-virtual {p0, p1}, Lcom/netflix/msl/io/MslObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 407
    instance-of v1, v0, Lcom/netflix/msl/io/MslArray;

    if-eqz v1, :cond_0

    .line 408
    check-cast v0, Lcom/netflix/msl/io/MslArray;

    .line 417
    :goto_0
    return-object v0

    .line 410
    :cond_0
    :try_start_0
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_1

    .line 411
    new-instance v1, Lcom/netflix/msl/io/MslArray;

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0}, Lcom/netflix/msl/io/MslArray;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    goto :goto_0

    .line 412
    :cond_1
    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 413
    new-instance v1, Lcom/netflix/msl/io/MslArray;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-direct {v1, v0}, Lcom/netflix/msl/io/MslArray;-><init>([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 414
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 415
    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 417
    goto :goto_0
.end method

.method public optMslObject(Ljava/lang/String;Lcom/netflix/msl/io/MslEncoderFactory;)Lcom/netflix/msl/io/MslObject;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 430
    invoke-virtual {p0, p1}, Lcom/netflix/msl/io/MslObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 431
    instance-of v1, v0, Lcom/netflix/msl/io/MslObject;

    if-eqz v1, :cond_0

    .line 432
    check-cast v0, Lcom/netflix/msl/io/MslObject;

    .line 456
    :goto_0
    return-object v0

    .line 442
    :cond_0
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 444
    :try_start_0
    new-instance v1, Lcom/netflix/msl/io/MslObject;

    check-cast v0, Ljava/util/Map;

    invoke-direct {v1, v0}, Lcom/netflix/msl/io/MslObject;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 445
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 446
    goto :goto_0

    .line 449
    :cond_1
    instance-of v1, v0, [B

    if-eqz v1, :cond_2

    .line 451
    :try_start_1
    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {p2, v0}, Lcom/netflix/msl/io/MslEncoderFactory;->parseObject([B)Lcom/netflix/msl/io/MslObject;
    :try_end_1
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 452
    :catch_1
    move-exception v0

    move-object v0, v2

    .line 453
    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 456
    goto :goto_0
.end method

.method public optString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 496
    const-string/jumbo v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/netflix/msl/io/MslObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 509
    invoke-virtual {p0, p1}, Lcom/netflix/msl/io/MslObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 510
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 511
    check-cast v0, Ljava/lang/String;

    .line 512
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;
    .locals 3

    .prologue
    .line 527
    if-nez p1, :cond_0

    .line 528
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 531
    :cond_0
    if-nez p2, :cond_1

    .line 532
    iget-object v0, p0, Lcom/netflix/msl/io/MslObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    :goto_0
    return-object p0

    .line 537
    :cond_1
    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_2

    instance-of v0, p2, [B

    if-nez v0, :cond_2

    instance-of v0, p2, Ljava/lang/Number;

    if-nez v0, :cond_2

    instance-of v0, p2, Lcom/netflix/msl/io/MslObject;

    if-nez v0, :cond_2

    instance-of v0, p2, Lcom/netflix/msl/io/MslArray;

    if-nez v0, :cond_2

    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_2

    instance-of v0, p2, Lcom/netflix/msl/io/MslEncodable;

    if-eqz v0, :cond_3

    .line 545
    :cond_2
    iget-object v0, p0, Lcom/netflix/msl/io/MslObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 547
    :cond_3
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 548
    iget-object v0, p0, Lcom/netflix/msl/io/MslObject;->map:Ljava/util/Map;

    new-instance v1, Lcom/netflix/msl/io/MslObject;

    check-cast p2, Ljava/util/Map;

    invoke-direct {v1, p2}, Lcom/netflix/msl/io/MslObject;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 549
    :cond_4
    instance-of v0, p2, Ljava/util/Collection;

    if-eqz v0, :cond_5

    .line 550
    iget-object v0, p0, Lcom/netflix/msl/io/MslObject;->map:Ljava/util/Map;

    new-instance v1, Lcom/netflix/msl/io/MslArray;

    check-cast p2, Ljava/util/Collection;

    invoke-direct {v1, p2}, Lcom/netflix/msl/io/MslArray;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 551
    :cond_5
    instance-of v0, p2, [Ljava/lang/Object;

    if-eqz v0, :cond_6

    .line 552
    iget-object v0, p0, Lcom/netflix/msl/io/MslObject;->map:Ljava/util/Map;

    new-instance v1, Lcom/netflix/msl/io/MslArray;

    check-cast p2, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    invoke-direct {v1, p2}, Lcom/netflix/msl/io/MslArray;-><init>([Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 553
    :cond_6
    instance-of v0, p2, Ljava/lang/Enum;

    if-eqz v0, :cond_7

    .line 554
    iget-object v0, p0, Lcom/netflix/msl/io/MslObject;->map:Ljava/util/Map;

    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 556
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
.end method

.method public putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/netflix/msl/io/MslObject;
    .locals 1

    .prologue
    .line 572
    invoke-virtual {p0, p1, p2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    return-object v0
.end method

.method public putBytes(Ljava/lang/String;[B)Lcom/netflix/msl/io/MslObject;
    .locals 1

    .prologue
    .line 587
    invoke-virtual {p0, p1, p2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    return-object v0
.end method

.method public putCollection(Ljava/lang/String;Ljava/util/Collection;)Lcom/netflix/msl/io/MslObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/netflix/msl/io/MslObject;"
        }
    .end annotation

    .prologue
    .line 602
    invoke-virtual {p0, p1, p2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    return-object v0
.end method

.method public putDouble(Ljava/lang/String;Ljava/lang/Double;)Lcom/netflix/msl/io/MslObject;
    .locals 1

    .prologue
    .line 617
    invoke-virtual {p0, p1, p2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    return-object v0
.end method

.method public putInt(Ljava/lang/String;Ljava/lang/Integer;)Lcom/netflix/msl/io/MslObject;
    .locals 1

    .prologue
    .line 632
    invoke-virtual {p0, p1, p2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    return-object v0
.end method

.method public putLong(Ljava/lang/String;Ljava/lang/Long;)Lcom/netflix/msl/io/MslObject;
    .locals 1

    .prologue
    .line 647
    invoke-virtual {p0, p1, p2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    return-object v0
.end method

.method public putMap(Ljava/lang/String;Ljava/util/Map;)Lcom/netflix/msl/io/MslObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/netflix/msl/io/MslObject;"
        }
    .end annotation

    .prologue
    .line 664
    invoke-virtual {p0, p1, p2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    return-object v0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/msl/io/MslObject;
    .locals 1

    .prologue
    .line 679
    invoke-virtual {p0, p1, p2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 690
    if-nez p1, :cond_0

    .line 691
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 692
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netflix/msl/io/MslObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 693
    iget-object v1, p0, Lcom/netflix/msl/io/MslObject;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x3a

    const/4 v2, 0x1

    .line 744
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 745
    const/4 v0, 0x0

    .line 746
    iget-object v1, p0, Lcom/netflix/msl/io/MslObject;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    .line 747
    iget-object v4, p0, Lcom/netflix/msl/io/MslObject;->map:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 748
    const/16 v5, 0x7b

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 750
    if-ne v1, v2, :cond_1

    .line 751
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 752
    invoke-static {v0}, Lcom/netflix/msl/io/MslEncoderFactory;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 754
    iget-object v1, p0, Lcom/netflix/msl/io/MslObject;->map:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/msl/io/MslEncoderFactory;->stringify(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    :cond_0
    const/16 v0, 0x7d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 768
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 755
    :cond_1
    if-eqz v1, :cond_0

    move v1, v0

    .line 756
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 757
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 758
    if-eqz v1, :cond_2

    .line 759
    const/16 v1, 0x2c

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 761
    :cond_2
    invoke-static {v0}, Lcom/netflix/msl/io/MslEncoderFactory;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 763
    iget-object v1, p0, Lcom/netflix/msl/io/MslObject;->map:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/msl/io/MslEncoderFactory;->stringify(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    .line 765
    goto :goto_0
.end method
