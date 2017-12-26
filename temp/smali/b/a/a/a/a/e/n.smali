.class public final Lb/a/a/a/a/e/n;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lb/a/a/a/a/e/o;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 20
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 21
    new-instance v1, Lb/a/a/a/a/e/q;

    invoke-interface {p0}, Lb/a/a/a/a/e/o;->a()Ljava/io/InputStream;

    move-result-object v2

    invoke-interface {p0}, Lb/a/a/a/a/e/o;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lb/a/a/a/a/e/q;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 23
    new-instance v2, Lb/a/a/a/a/e/p;

    invoke-direct {v2, v1, p0}, Lb/a/a/a/a/e/p;-><init>(Lb/a/a/a/a/e/q;Lb/a/a/a/a/e/o;)V

    .line 24
    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v4, v1, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 25
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method
