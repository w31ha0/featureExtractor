.class public Lorg/chromium/net/impl/CronetEngineBuilderImpl$Pkp;
.super Ljava/lang/Object;
.source "CronetEngineBuilderImpl.java"


# instance fields
.field final mExpirationDate:Ljava/util/Date;

.field final mHashes:[[B

.field final mHost:Ljava/lang/String;

.field final mIncludeSubdomains:Z


# direct methods
.method constructor <init>(Ljava/lang/String;[[BZLjava/util/Date;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/chromium/net/impl/CronetEngineBuilderImpl$Pkp;->mHost:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lorg/chromium/net/impl/CronetEngineBuilderImpl$Pkp;->mHashes:[[B

    .line 67
    iput-boolean p3, p0, Lorg/chromium/net/impl/CronetEngineBuilderImpl$Pkp;->mIncludeSubdomains:Z

    .line 68
    iput-object p4, p0, Lorg/chromium/net/impl/CronetEngineBuilderImpl$Pkp;->mExpirationDate:Ljava/util/Date;

    .line 69
    return-void
.end method
