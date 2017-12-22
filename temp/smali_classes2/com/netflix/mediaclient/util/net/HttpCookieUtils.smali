.class public final Lcom/netflix/mediaclient/util/net/HttpCookieUtils;
.super Ljava/lang/Object;
.source "HttpCookieUtils.java"


# static fields
.field public static final COOKIE_KEY_HEADER:Ljava/lang/String; = "Cookie"

.field private static final NETFLIX_ID:Ljava/lang/String; = "NetflixId"

.field private static final NETFLIX_ID_TEST:Ljava/lang/String; = "NetflixIdTest"

.field private static final SECURE_NETFLIX_ID:Ljava/lang/String; = "SecureNetflixId"

.field private static final SECURE_NETFLIX_ID_TEST:Ljava/lang/String; = "SecureNetflixIdTest"

.field public static final SET_COOKIE_KEY_HEADER:Ljava/lang/String; = "Set-Cookie"

.field private static final TAG:Ljava/lang/String; = "nf_net_cookies"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAuthorizationCredentials(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v2, 0x0

    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 33
    .line 34
    if-eqz p1, :cond_3

    .line 41
    const-string/jumbo v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 42
    array-length v6, v5

    move v3, v4

    move-object v0, v2

    move-object v1, v2

    :goto_0
    if-ge v3, v6, :cond_3

    aget-object v7, v5, v3

    .line 43
    const-string/jumbo v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 44
    array-length v8, v7

    if-lt v8, v11, :cond_0

    .line 45
    invoke-static {}, Lcom/netflix/mediaclient/util/net/HttpCookieUtils;->getNetflixIdName()Ljava/lang/String;

    move-result-object v8

    aget-object v9, v7, v4

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 46
    aget-object v1, v7, v10

    .line 53
    :cond_0
    :goto_1
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 54
    const-string/jumbo v2, "nf_net_cookies"

    const-string/jumbo v3, "update cookies for %s: newId %s"

    new-array v5, v11, [Ljava/lang/Object;

    aput-object p0, v5, v4

    aput-object v1, v5, v10

    invoke-static {v2, v3, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 55
    new-instance v2, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    invoke-direct {v2, p0, v1, v0}, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 60
    :goto_2
    return-object v0

    .line 48
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/util/net/HttpCookieUtils;->getSecureNetflixIdName()Ljava/lang/String;

    move-result-object v8

    aget-object v9, v7, v4

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 49
    aget-object v0, v7, v10

    goto :goto_1

    .line 42
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move-object v0, v2

    .line 60
    goto :goto_2
.end method

.method public static getNetflixIdName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-string/jumbo v0, "NetflixId"

    return-object v0
.end method

.method public static getSecureNetflixIdName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string/jumbo v0, "SecureNetflixId"

    return-object v0
.end method
