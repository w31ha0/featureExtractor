.class Lorg/apache/http/conn/ssl/TrustManagerDecorator;
.super Ljava/lang/Object;
.source "TrustManagerDecorator.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field private final trustManager:Ljavax/net/ssl/X509TrustManager;

.field private final trustStrategy:Lorg/apache/http/conn/ssl/TrustStrategy;


# direct methods
.method constructor <init>(Ljavax/net/ssl/X509TrustManager;Lorg/apache/http/conn/ssl/TrustStrategy;)V
    .locals 0
    .param p1, "trustManager"    # Ljavax/net/ssl/X509TrustManager;
    .param p2, "trustStrategy"    # Lorg/apache/http/conn/ssl/TrustStrategy;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/apache/http/conn/ssl/TrustManagerDecorator;->trustManager:Ljavax/net/ssl/X509TrustManager;

    .line 45
    iput-object p2, p0, Lorg/apache/http/conn/ssl/TrustManagerDecorator;->trustStrategy:Lorg/apache/http/conn/ssl/TrustStrategy;

    .line 46
    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/http/conn/ssl/TrustManagerDecorator;->trustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/http/conn/ssl/TrustManagerDecorator;->trustStrategy:Lorg/apache/http/conn/ssl/TrustStrategy;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/conn/ssl/TrustStrategy;->isTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lorg/apache/http/conn/ssl/TrustManagerDecorator;->trustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 58
    :cond_0
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/http/conn/ssl/TrustManagerDecorator;->trustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method
