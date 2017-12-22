.class public final Lorg/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;
.super Lorg/chromium/net/UploadDataProvider;
.source "VersionSafeCallbacks.java"


# instance fields
.field private final mWrappedProvider:Lorg/chromium/net/UploadDataProvider;


# direct methods
.method public constructor <init>(Lorg/chromium/net/UploadDataProvider;)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Lorg/chromium/net/UploadDataProvider;-><init>()V

    .line 154
    iput-object p1, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;->mWrappedProvider:Lorg/chromium/net/UploadDataProvider;

    .line 155
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;->mWrappedProvider:Lorg/chromium/net/UploadDataProvider;

    invoke-virtual {v0}, Lorg/chromium/net/UploadDataProvider;->close()V

    .line 175
    return-void
.end method

.method public getLength()J
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;->mWrappedProvider:Lorg/chromium/net/UploadDataProvider;

    invoke-virtual {v0}, Lorg/chromium/net/UploadDataProvider;->getLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public read(Lorg/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;->mWrappedProvider:Lorg/chromium/net/UploadDataProvider;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/net/UploadDataProvider;->read(Lorg/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V

    .line 165
    return-void
.end method

.method public rewind(Lorg/chromium/net/UploadDataSink;)V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;->mWrappedProvider:Lorg/chromium/net/UploadDataProvider;

    invoke-virtual {v0, p1}, Lorg/chromium/net/UploadDataProvider;->rewind(Lorg/chromium/net/UploadDataSink;)V

    .line 170
    return-void
.end method
