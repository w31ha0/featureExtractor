.class final Lio/realm/RealmSeasonRealmProxy$RealmSeasonColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "RealmSeasonRealmProxy.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public numberIndex:J

.field public titleIndex:J


# direct methods
.method constructor <init>(Ljava/lang/String;Lio/realm/internal/Table;)V
    .locals 4

    .prologue
    .line 40
    invoke-direct {p0}, Lio/realm/internal/ColumnInfo;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 42
    const-string/jumbo v1, "RealmSeason"

    const-string/jumbo v2, "number"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmSeasonRealmProxy$RealmSeasonColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmSeasonRealmProxy$RealmSeasonColumnInfo;->numberIndex:J

    .line 43
    const-string/jumbo v1, "number"

    iget-wide v2, p0, Lio/realm/RealmSeasonRealmProxy$RealmSeasonColumnInfo;->numberIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string/jumbo v1, "RealmSeason"

    const-string/jumbo v2, "title"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmSeasonRealmProxy$RealmSeasonColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmSeasonRealmProxy$RealmSeasonColumnInfo;->titleIndex:J

    .line 45
    const-string/jumbo v1, "title"

    iget-wide v2, p0, Lio/realm/RealmSeasonRealmProxy$RealmSeasonColumnInfo;->titleIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-virtual {p0, v0}, Lio/realm/RealmSeasonRealmProxy$RealmSeasonColumnInfo;->setIndicesMap(Ljava/util/Map;)V

    .line 48
    return-void
.end method


# virtual methods
.method public final clone()Lio/realm/RealmSeasonRealmProxy$RealmSeasonColumnInfo;
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Lio/realm/internal/ColumnInfo;->clone()Lio/realm/internal/ColumnInfo;

    move-result-object v0

    check-cast v0, Lio/realm/RealmSeasonRealmProxy$RealmSeasonColumnInfo;

    return-object v0
.end method

.method public bridge synthetic clone()Lio/realm/internal/ColumnInfo;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lio/realm/RealmSeasonRealmProxy$RealmSeasonColumnInfo;->clone()Lio/realm/RealmSeasonRealmProxy$RealmSeasonColumnInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lio/realm/RealmSeasonRealmProxy$RealmSeasonColumnInfo;->clone()Lio/realm/RealmSeasonRealmProxy$RealmSeasonColumnInfo;

    move-result-object v0

    return-object v0
.end method

.method public final copyColumnInfoFrom(Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .prologue
    .line 52
    check-cast p1, Lio/realm/RealmSeasonRealmProxy$RealmSeasonColumnInfo;

    .line 53
    iget-wide v0, p1, Lio/realm/RealmSeasonRealmProxy$RealmSeasonColumnInfo;->numberIndex:J

    iput-wide v0, p0, Lio/realm/RealmSeasonRealmProxy$RealmSeasonColumnInfo;->numberIndex:J

    .line 54
    iget-wide v0, p1, Lio/realm/RealmSeasonRealmProxy$RealmSeasonColumnInfo;->titleIndex:J

    iput-wide v0, p0, Lio/realm/RealmSeasonRealmProxy$RealmSeasonColumnInfo;->titleIndex:J

    .line 56
    invoke-virtual {p1}, Lio/realm/RealmSeasonRealmProxy$RealmSeasonColumnInfo;->getIndicesMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/realm/RealmSeasonRealmProxy$RealmSeasonColumnInfo;->setIndicesMap(Ljava/util/Map;)V

    .line 57
    return-void
.end method
