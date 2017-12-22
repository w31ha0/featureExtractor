.class final Lio/realm/RealmIncompleteVideoDetailsRealmProxy$RealmIncompleteVideoDetailsColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "RealmIncompleteVideoDetailsRealmProxy.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public playableIdIndex:J

.field public profileIdIndex:J

.field public videoTypeIndex:J


# direct methods
.method constructor <init>(Ljava/lang/String;Lio/realm/internal/Table;)V
    .locals 4

    .prologue
    .line 41
    invoke-direct {p0}, Lio/realm/internal/ColumnInfo;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 43
    const-string/jumbo v1, "RealmIncompleteVideoDetails"

    const-string/jumbo v2, "playableId"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmIncompleteVideoDetailsRealmProxy$RealmIncompleteVideoDetailsColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmIncompleteVideoDetailsRealmProxy$RealmIncompleteVideoDetailsColumnInfo;->playableIdIndex:J

    .line 44
    const-string/jumbo v1, "playableId"

    iget-wide v2, p0, Lio/realm/RealmIncompleteVideoDetailsRealmProxy$RealmIncompleteVideoDetailsColumnInfo;->playableIdIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string/jumbo v1, "RealmIncompleteVideoDetails"

    const-string/jumbo v2, "videoType"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmIncompleteVideoDetailsRealmProxy$RealmIncompleteVideoDetailsColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmIncompleteVideoDetailsRealmProxy$RealmIncompleteVideoDetailsColumnInfo;->videoTypeIndex:J

    .line 46
    const-string/jumbo v1, "videoType"

    iget-wide v2, p0, Lio/realm/RealmIncompleteVideoDetailsRealmProxy$RealmIncompleteVideoDetailsColumnInfo;->videoTypeIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string/jumbo v1, "RealmIncompleteVideoDetails"

    const-string/jumbo v2, "profileId"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmIncompleteVideoDetailsRealmProxy$RealmIncompleteVideoDetailsColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmIncompleteVideoDetailsRealmProxy$RealmIncompleteVideoDetailsColumnInfo;->profileIdIndex:J

    .line 48
    const-string/jumbo v1, "profileId"

    iget-wide v2, p0, Lio/realm/RealmIncompleteVideoDetailsRealmProxy$RealmIncompleteVideoDetailsColumnInfo;->profileIdIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-virtual {p0, v0}, Lio/realm/RealmIncompleteVideoDetailsRealmProxy$RealmIncompleteVideoDetailsColumnInfo;->setIndicesMap(Ljava/util/Map;)V

    .line 51
    return-void
.end method


# virtual methods
.method public final clone()Lio/realm/RealmIncompleteVideoDetailsRealmProxy$RealmIncompleteVideoDetailsColumnInfo;
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Lio/realm/internal/ColumnInfo;->clone()Lio/realm/internal/ColumnInfo;

    move-result-object v0

    check-cast v0, Lio/realm/RealmIncompleteVideoDetailsRealmProxy$RealmIncompleteVideoDetailsColumnInfo;

    return-object v0
.end method

.method public bridge synthetic clone()Lio/realm/internal/ColumnInfo;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lio/realm/RealmIncompleteVideoDetailsRealmProxy$RealmIncompleteVideoDetailsColumnInfo;->clone()Lio/realm/RealmIncompleteVideoDetailsRealmProxy$RealmIncompleteVideoDetailsColumnInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lio/realm/RealmIncompleteVideoDetailsRealmProxy$RealmIncompleteVideoDetailsColumnInfo;->clone()Lio/realm/RealmIncompleteVideoDetailsRealmProxy$RealmIncompleteVideoDetailsColumnInfo;

    move-result-object v0

    return-object v0
.end method

.method public final copyColumnInfoFrom(Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .prologue
    .line 55
    check-cast p1, Lio/realm/RealmIncompleteVideoDetailsRealmProxy$RealmIncompleteVideoDetailsColumnInfo;

    .line 56
    iget-wide v0, p1, Lio/realm/RealmIncompleteVideoDetailsRealmProxy$RealmIncompleteVideoDetailsColumnInfo;->playableIdIndex:J

    iput-wide v0, p0, Lio/realm/RealmIncompleteVideoDetailsRealmProxy$RealmIncompleteVideoDetailsColumnInfo;->playableIdIndex:J

    .line 57
    iget-wide v0, p1, Lio/realm/RealmIncompleteVideoDetailsRealmProxy$RealmIncompleteVideoDetailsColumnInfo;->videoTypeIndex:J

    iput-wide v0, p0, Lio/realm/RealmIncompleteVideoDetailsRealmProxy$RealmIncompleteVideoDetailsColumnInfo;->videoTypeIndex:J

    .line 58
    iget-wide v0, p1, Lio/realm/RealmIncompleteVideoDetailsRealmProxy$RealmIncompleteVideoDetailsColumnInfo;->profileIdIndex:J

    iput-wide v0, p0, Lio/realm/RealmIncompleteVideoDetailsRealmProxy$RealmIncompleteVideoDetailsColumnInfo;->profileIdIndex:J

    .line 60
    invoke-virtual {p1}, Lio/realm/RealmIncompleteVideoDetailsRealmProxy$RealmIncompleteVideoDetailsColumnInfo;->getIndicesMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/realm/RealmIncompleteVideoDetailsRealmProxy$RealmIncompleteVideoDetailsColumnInfo;->setIndicesMap(Ljava/util/Map;)V

    .line 61
    return-void
.end method
