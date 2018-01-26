.class public final Ltwitter4j/FilterQuery;
.super Ljava/lang/Object;
.source "FilterQuery.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private count:I

.field private follow:[I

.field private locations:[[D

.field private track:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v1, 0x0

    iput v1, p0, Ltwitter4j/FilterQuery;->count:I

    .line 48
    iput-object v0, p0, Ltwitter4j/FilterQuery;->follow:[I

    .line 49
    iput-object v0, p0, Ltwitter4j/FilterQuery;->track:[Ljava/lang/String;

    .line 50
    check-cast v0, [[D

    iput-object v0, p0, Ltwitter4j/FilterQuery;->locations:[[D

    .line 51
    return-void
.end method

.method public constructor <init>(I[I)V
    .locals 0
    .param p1, "count"    # I
    .param p2, "follow"    # [I

    .prologue
    .line 67
    invoke-direct {p0}, Ltwitter4j/FilterQuery;-><init>()V

    .line 68
    iput p1, p0, Ltwitter4j/FilterQuery;->count:I

    .line 69
    iput-object p2, p0, Ltwitter4j/FilterQuery;->follow:[I

    .line 70
    return-void
.end method

.method public constructor <init>(I[I[Ljava/lang/String;)V
    .locals 0
    .param p1, "count"    # I
    .param p2, "follow"    # [I
    .param p3, "track"    # [Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0}, Ltwitter4j/FilterQuery;-><init>()V

    .line 79
    iput p1, p0, Ltwitter4j/FilterQuery;->count:I

    .line 80
    iput-object p2, p0, Ltwitter4j/FilterQuery;->follow:[I

    .line 81
    iput-object p3, p0, Ltwitter4j/FilterQuery;->track:[Ljava/lang/String;

    .line 82
    return-void
.end method

.method public constructor <init>(I[I[Ljava/lang/String;[[D)V
    .locals 0
    .param p1, "count"    # I
    .param p2, "follow"    # [I
    .param p3, "track"    # [Ljava/lang/String;
    .param p4, "locations"    # [[D

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput p1, p0, Ltwitter4j/FilterQuery;->count:I

    .line 93
    iput-object p2, p0, Ltwitter4j/FilterQuery;->follow:[I

    .line 94
    iput-object p3, p0, Ltwitter4j/FilterQuery;->track:[Ljava/lang/String;

    .line 95
    iput-object p4, p0, Ltwitter4j/FilterQuery;->locations:[[D

    .line 96
    return-void
.end method

.method public constructor <init>([I)V
    .locals 1
    .param p1, "follow"    # [I

    .prologue
    .line 57
    invoke-direct {p0}, Ltwitter4j/FilterQuery;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Ltwitter4j/FilterQuery;->count:I

    .line 59
    iput-object p1, p0, Ltwitter4j/FilterQuery;->follow:[I

    .line 60
    return-void
.end method

.method private toFollowString([I)Ljava/lang/String;
    .locals 6
    .param p1, "follows"    # [I

    .prologue
    .line 169
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v5, p1

    mul-int/lit8 v5, v5, 0xb

    invoke-direct {v1, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 170
    .local v1, "buf":Ljava/lang/StringBuffer;
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v2, v0, v3

    .line 171
    .local v2, "follow":I
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 172
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 170
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 176
    .end local v2    # "follow":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private toLocationsString([[D)Ljava/lang/String;
    .locals 4
    .param p1, "keywords"    # [[D

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x14

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 158
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "c":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    :cond_0
    aget-object v2, p1, v1

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 163
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    aget-object v2, p1, v1

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private toTrackString([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "keywords"    # [Ljava/lang/String;

    .prologue
    .line 180
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v5, p1

    mul-int/lit8 v5, v5, 0x14

    mul-int/lit8 v5, v5, 0x4

    invoke-direct {v1, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 181
    .local v1, "buf":Ljava/lang/StringBuffer;
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v3, v0, v2

    .line 182
    .local v3, "keyword":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 183
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    .end local v3    # "keyword":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method asHttpParameterArray()[Ltwitter4j/internal/http/HttpParameter;
    .locals 5

    .prologue
    .line 136
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v1, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltwitter4j/internal/http/HttpParameter;>;"
    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    const-string v3, "count"

    iget v4, p0, Ltwitter4j/FilterQuery;->count:I

    invoke-direct {v2, v3, v4}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v2, p0, Ltwitter4j/FilterQuery;->follow:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltwitter4j/FilterQuery;->follow:[I

    array-length v2, v2

    if-lez v2, :cond_0

    .line 140
    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    const-string v3, "follow"

    iget-object v4, p0, Ltwitter4j/FilterQuery;->follow:[I

    invoke-direct {p0, v4}, Ltwitter4j/FilterQuery;->toFollowString([I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_0
    iget-object v2, p0, Ltwitter4j/FilterQuery;->track:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltwitter4j/FilterQuery;->track:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 144
    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    const-string v3, "track"

    iget-object v4, p0, Ltwitter4j/FilterQuery;->track:[Ljava/lang/String;

    invoke-direct {p0, v4}, Ltwitter4j/FilterQuery;->toTrackString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_1
    iget-object v2, p0, Ltwitter4j/FilterQuery;->locations:[[D

    if-eqz v2, :cond_2

    iget-object v2, p0, Ltwitter4j/FilterQuery;->locations:[[D

    array-length v2, v2

    if-lez v2, :cond_2

    .line 148
    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    const-string v3, "locations"

    iget-object v4, p0, Ltwitter4j/FilterQuery;->locations:[[D

    invoke-direct {p0, v4}, Ltwitter4j/FilterQuery;->toLocationsString([[D)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Ltwitter4j/internal/http/HttpParameter;

    .line 153
    .local v0, "paramArray":[Ltwitter4j/internal/http/HttpParameter;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ltwitter4j/internal/http/HttpParameter;

    return-object v2
.end method

.method public count(I)Ltwitter4j/FilterQuery;
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 104
    iput p1, p0, Ltwitter4j/FilterQuery;->count:I

    .line 105
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 192
    if-ne p0, p1, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v1

    .line 193
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 195
    check-cast v0, Ltwitter4j/FilterQuery;

    .line 197
    .local v0, "that":Ltwitter4j/FilterQuery;
    iget v3, p0, Ltwitter4j/FilterQuery;->count:I

    iget v4, v0, Ltwitter4j/FilterQuery;->count:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 198
    :cond_4
    iget-object v3, p0, Ltwitter4j/FilterQuery;->follow:[I

    iget-object v4, v0, Ltwitter4j/FilterQuery;->follow:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 199
    :cond_5
    iget-object v3, p0, Ltwitter4j/FilterQuery;->track:[Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/FilterQuery;->track:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public follow([I)Ltwitter4j/FilterQuery;
    .locals 0
    .param p1, "follow"    # [I

    .prologue
    .line 113
    iput-object p1, p0, Ltwitter4j/FilterQuery;->follow:[I

    .line 114
    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 206
    iget v0, p0, Ltwitter4j/FilterQuery;->count:I

    .line 207
    .local v0, "result":I
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Ltwitter4j/FilterQuery;->follow:[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Ltwitter4j/FilterQuery;->follow:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 208
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/FilterQuery;->track:[Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v2, p0, Ltwitter4j/FilterQuery;->track:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 209
    return v0

    :cond_1
    move v1, v2

    .line 207
    goto :goto_0
.end method

.method public locations([[D)Ltwitter4j/FilterQuery;
    .locals 0
    .param p1, "locations"    # [[D

    .prologue
    .line 131
    iput-object p1, p0, Ltwitter4j/FilterQuery;->locations:[[D

    .line 132
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 214
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "FilterQuery{count="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v2, p0, Ltwitter4j/FilterQuery;->count:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", follow="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/FilterQuery;->follow:[I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", track="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v0, p0, Ltwitter4j/FilterQuery;->track:[Ljava/lang/String;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", locations="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/FilterQuery;->locations:[[D

    if-nez v2, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Ltwitter4j/FilterQuery;->track:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ltwitter4j/FilterQuery;->locations:[[D

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_1
.end method

.method public track([Ljava/lang/String;)Ltwitter4j/FilterQuery;
    .locals 0
    .param p1, "track"    # [Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Ltwitter4j/FilterQuery;->track:[Ljava/lang/String;

    .line 123
    return-object p0
.end method
