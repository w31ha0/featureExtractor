.class public Lvpadn/cx;
.super Ljava/lang/Object;
.source "HttpClientFactory.java"


# static fields
.field private static a:Lvpadn/cx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lvpadn/cx;

    invoke-direct {v0}, Lvpadn/cx;-><init>()V

    sput-object v0, Lvpadn/cx;->a:Lvpadn/cx;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lvpadn/cx;->a:Lvpadn/cx;

    invoke-virtual {v0, p0}, Lvpadn/cx;->b(I)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected b(I)Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 29
    if-lez p1, :cond_0

    .line 31
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 32
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 37
    :cond_0
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 39
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    return-object v1
.end method
