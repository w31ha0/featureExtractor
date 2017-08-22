.class public Lcom/mopub/mobileads/WebViewAdUrlGenerator;
.super Lcom/mopub/common/AdUrlGenerator;
.source "WebViewAdUrlGenerator.java"


# instance fields
.field private final mIsStorePictureSupported:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isStorePictureSupported"    # Z

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/mopub/common/AdUrlGenerator;-><init>(Landroid/content/Context;)V

    .line 14
    iput-boolean p2, p0, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->mIsStorePictureSupported:Z

    .line 15
    return-void
.end method


# virtual methods
.method public generateUrlString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "serverHostname"    # Ljava/lang/String;

    .prologue
    .line 19
    const-string v1, "/m/ad"

    invoke-virtual {p0, p1, v1}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->initUrlString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string v1, "6"

    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->setApiVersion(Ljava/lang/String;)V

    .line 23
    iget-object v1, p0, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v0

    .line 24
    .local v0, "clientMetadata":Lcom/mopub/common/ClientMetadata;
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->addBaseParams(Lcom/mopub/common/ClientMetadata;)V

    .line 26
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->setMraidFlag(Z)V

    .line 28
    iget-boolean v1, p0, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->mIsStorePictureSupported:Z

    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->setExternalStoragePermission(Z)V

    .line 30
    invoke-virtual {p0}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->getFinalUrlString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
