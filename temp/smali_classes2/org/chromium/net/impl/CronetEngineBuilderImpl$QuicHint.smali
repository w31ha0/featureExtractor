.class public Lorg/chromium/net/impl/CronetEngineBuilderImpl$QuicHint;
.super Ljava/lang/Object;
.source "CronetEngineBuilderImpl.java"


# instance fields
.field final mAlternatePort:I

.field final mHost:Ljava/lang/String;

.field final mPort:I


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/chromium/net/impl/CronetEngineBuilderImpl$QuicHint;->mHost:Ljava/lang/String;

    .line 46
    iput p2, p0, Lorg/chromium/net/impl/CronetEngineBuilderImpl$QuicHint;->mPort:I

    .line 47
    iput p3, p0, Lorg/chromium/net/impl/CronetEngineBuilderImpl$QuicHint;->mAlternatePort:I

    .line 48
    return-void
.end method
