.class public final Lorg/chromium/net/impl/VersionSafeCallbacks$LibraryLoader;
.super Lorg/chromium/net/CronetEngine$Builder$LibraryLoader;
.source "VersionSafeCallbacks.java"


# instance fields
.field private final mWrappedLoader:Lorg/chromium/net/CronetEngine$Builder$LibraryLoader;


# direct methods
.method public constructor <init>(Lorg/chromium/net/CronetEngine$Builder$LibraryLoader;)V
    .locals 0

    .prologue
    .line 282
    invoke-direct {p0}, Lorg/chromium/net/CronetEngine$Builder$LibraryLoader;-><init>()V

    .line 283
    iput-object p1, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$LibraryLoader;->mWrappedLoader:Lorg/chromium/net/CronetEngine$Builder$LibraryLoader;

    .line 284
    return-void
.end method


# virtual methods
.method public loadLibrary(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$LibraryLoader;->mWrappedLoader:Lorg/chromium/net/CronetEngine$Builder$LibraryLoader;

    invoke-virtual {v0, p1}, Lorg/chromium/net/CronetEngine$Builder$LibraryLoader;->loadLibrary(Ljava/lang/String;)V

    .line 289
    return-void
.end method
