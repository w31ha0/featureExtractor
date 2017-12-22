.class public Lcom/netflix/msl/userauth/SsoAuthenticationData$NetflixIdCookies;
.super Ljava/lang/Object;
.source "SsoAuthenticationData.java"


# instance fields
.field public final netflixId:Ljava/lang/String;

.field public final secureNetflixId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData$NetflixIdCookies;->netflixId:Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData$NetflixIdCookies;->secureNetflixId:Ljava/lang/String;

    .line 94
    return-void
.end method
