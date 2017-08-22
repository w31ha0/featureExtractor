.class Lcom/taiwanmobile/pt/adp/view/TWMNativeAd$1;
.super Ljava/lang/Object;
.source "TWMNativeAd.java"

# interfaces
.implements Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;


# direct methods
.method constructor <init>(Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public noticeError(Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;)V
    .locals 3

    .prologue
    .line 55
    const-string v0, "TWMAdServiceCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "noticeError("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") invoked!! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;

    invoke-static {v0, p1}, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->a(Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;)V

    .line 57
    return-void
.end method
