.class public Lcom/netflix/mediaclient/service/webclient/model/leafs/UserBoundCookies;
.super Ljava/lang/Object;
.source "UserBoundCookies.java"


# instance fields
.field private NetflixId:Ljava/lang/String;

.field private NetflixIdTest:Ljava/lang/String;

.field private SecureNetflixId:Ljava/lang/String;

.field private SecureNetflixIdTest:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserBoundNetflixId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserBoundCookies;->NetflixId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserBoundSecureNetflixId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserBoundCookies;->SecureNetflixId:Ljava/lang/String;

    return-object v0
.end method
