.class public final Ltwitter4j/StatusUpdate;
.super Ljava/lang/Object;
.source "StatusUpdate.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x31e5caa537ab7fbcL


# instance fields
.field private displayCoordinates:Z

.field private inReplyToStatusId:J

.field private location:Ltwitter4j/GeoLocation;

.field private placeId:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    .line 42
    iput-object v2, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    .line 43
    iput-object v2, p0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltwitter4j/StatusUpdate;->displayCoordinates:Z

    .line 48
    iput-object p1, p0, Ltwitter4j/StatusUpdate;->status:Ljava/lang/String;

    .line 49
    return-void
.end method

.method private appendParameter(Ljava/lang/String;DLjava/util/List;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/internal/http/HttpParameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p4, "params":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    new-instance v0, Ltwitter4j/internal/http/HttpParameter;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    return-void
.end method

.method private appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/internal/http/HttpParameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p3, "params":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    if-eqz p2, :cond_0

    .line 125
    new-instance v0, Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {v0, p1, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_0
    return-void
.end method


# virtual methods
.method asHttpParameterArray()[Ltwitter4j/internal/http/HttpParameter;
    .locals 6

    .prologue
    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v1, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltwitter4j/internal/http/HttpParameter;>;"
    const-string v2, "status"

    iget-object v3, p0, Ltwitter4j/StatusUpdate;->status:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/StatusUpdate;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 107
    const-wide/16 v2, -0x1

    iget-wide v4, p0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 108
    const-string v2, "in_reply_to_status_id"

    iget-wide v3, p0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    long-to-double v3, v3

    invoke-direct {p0, v2, v3, v4, v1}, Ltwitter4j/StatusUpdate;->appendParameter(Ljava/lang/String;DLjava/util/List;)V

    .line 110
    :cond_0
    iget-object v2, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    if-eqz v2, :cond_1

    .line 111
    const-string v2, "lat"

    iget-object v3, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    invoke-virtual {v3}, Ltwitter4j/GeoLocation;->getLatitude()D

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4, v1}, Ltwitter4j/StatusUpdate;->appendParameter(Ljava/lang/String;DLjava/util/List;)V

    .line 112
    const-string v2, "long"

    iget-object v3, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    invoke-virtual {v3}, Ltwitter4j/GeoLocation;->getLongitude()D

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4, v1}, Ltwitter4j/StatusUpdate;->appendParameter(Ljava/lang/String;DLjava/util/List;)V

    .line 115
    :cond_1
    const-string v2, "place_id"

    iget-object v3, p0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/StatusUpdate;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 116
    iget-boolean v2, p0, Ltwitter4j/StatusUpdate;->displayCoordinates:Z

    if-nez v2, :cond_2

    .line 117
    const-string v2, "display_coordinates"

    const-string v3, "false"

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/StatusUpdate;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 119
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Ltwitter4j/internal/http/HttpParameter;

    .line 120
    .local v0, "paramArray":[Ltwitter4j/internal/http/HttpParameter;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ltwitter4j/internal/http/HttpParameter;

    return-object v2
.end method

.method public displayCoordinates(Z)Ltwitter4j/StatusUpdate;
    .locals 0
    .param p1, "displayCoordinates"    # Z

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Ltwitter4j/StatusUpdate;->setDisplayCoordinates(Z)V

    .line 102
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 135
    if-ne p0, p1, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v1

    .line 136
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

    .line 138
    check-cast v0, Ltwitter4j/StatusUpdate;

    .line 140
    .local v0, "that":Ltwitter4j/StatusUpdate;
    iget-boolean v3, p0, Ltwitter4j/StatusUpdate;->displayCoordinates:Z

    iget-boolean v4, v0, Ltwitter4j/StatusUpdate;->displayCoordinates:Z

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 141
    :cond_4
    iget-wide v3, p0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    iget-wide v5, v0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 142
    :cond_5
    iget-object v3, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    if-eqz v3, :cond_7

    iget-object v3, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    iget-object v4, v0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    invoke-virtual {v3, v4}, Ltwitter4j/GeoLocation;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_6
    move v1, v2

    .line 143
    goto :goto_0

    .line 142
    :cond_7
    iget-object v3, v0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    if-nez v3, :cond_6

    .line 144
    :cond_8
    iget-object v3, p0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    :cond_9
    move v1, v2

    .line 145
    goto :goto_0

    .line 144
    :cond_a
    iget-object v3, v0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 146
    :cond_b
    iget-object v3, p0, Ltwitter4j/StatusUpdate;->status:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/StatusUpdate;->status:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getInReplyToStatusId()J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    return-wide v0
.end method

.method public getLocation()Ltwitter4j/GeoLocation;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    return-object v0
.end method

.method public getPlaceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Ltwitter4j/StatusUpdate;->status:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 153
    iget-object v1, p0, Ltwitter4j/StatusUpdate;->status:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 154
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v3, p0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    iget-wide v5, p0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    const/16 v7, 0x20

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v1, v3

    .line 155
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    invoke-virtual {v1}, Ltwitter4j/GeoLocation;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 156
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int v0, v3, v1

    .line 157
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v3, p0, Ltwitter4j/StatusUpdate;->displayCoordinates:Z

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int v0, v1, v2

    .line 158
    return v0

    :cond_1
    move v1, v2

    .line 155
    goto :goto_0

    :cond_2
    move v1, v2

    .line 156
    goto :goto_1
.end method

.method public inReplyToStatusId(J)Ltwitter4j/StatusUpdate;
    .locals 0
    .param p1, "inReplyToStatusId"    # J

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Ltwitter4j/StatusUpdate;->setInReplyToStatusId(J)V

    .line 65
    return-object p0
.end method

.method public isDisplayCoordinates()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Ltwitter4j/StatusUpdate;->displayCoordinates:Z

    return v0
.end method

.method public location(Ltwitter4j/GeoLocation;)Ltwitter4j/StatusUpdate;
    .locals 0
    .param p1, "location"    # Ltwitter4j/GeoLocation;

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Ltwitter4j/StatusUpdate;->setLocation(Ltwitter4j/GeoLocation;)V

    .line 77
    return-object p0
.end method

.method public placeId(Ljava/lang/String;)Ltwitter4j/StatusUpdate;
    .locals 0
    .param p1, "placeId"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Ltwitter4j/StatusUpdate;->setPlaceId(Ljava/lang/String;)V

    .line 90
    return-object p0
.end method

.method public setDisplayCoordinates(Z)V
    .locals 0
    .param p1, "displayCoordinates"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Ltwitter4j/StatusUpdate;->displayCoordinates:Z

    .line 99
    return-void
.end method

.method public setInReplyToStatusId(J)V
    .locals 0
    .param p1, "inReplyToStatusId"    # J

    .prologue
    .line 60
    iput-wide p1, p0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    .line 61
    return-void
.end method

.method public setLocation(Ltwitter4j/GeoLocation;)V
    .locals 0
    .param p1, "location"    # Ltwitter4j/GeoLocation;

    .prologue
    .line 73
    iput-object p1, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    .line 74
    return-void
.end method

.method public setPlaceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "placeId"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x27

    .line 163
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "StatusUpdate{status=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusUpdate;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", inReplyToStatusId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", placeId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", displayCoordinates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/StatusUpdate;->displayCoordinates:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
