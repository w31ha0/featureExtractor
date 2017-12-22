.class public Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;
.super Lio/realm/RealmObject;
.source "RealmSeason.java"

# interfaces
.implements Lio/realm/RealmSeasonRealmProxyInterface;


# instance fields
.field private number:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    check-cast p0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;->realmGet$number()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;->realmGet$title()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$number()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;->number:I

    return v0
.end method

.method public realmGet$title()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;->title:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$number(I)V
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;->number:I

    return-void
.end method

.method public realmSet$title(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;->title:Ljava/lang/String;

    return-void
.end method

.method public setNumber(I)V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;->realmSet$number(I)V

    .line 26
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;->realmSet$title(Ljava/lang/String;)V

    .line 22
    return-void
.end method
