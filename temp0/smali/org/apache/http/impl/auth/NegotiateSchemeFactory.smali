.class public Lorg/apache/http/impl/auth/NegotiateSchemeFactory;
.super Ljava/lang/Object;
.source "NegotiateSchemeFactory.java"

# interfaces
.implements Lorg/apache/http/auth/AuthSchemeFactory;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final spengoGenerator:Lorg/apache/http/impl/auth/SpnegoTokenGenerator;

.field private final stripPort:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/auth/NegotiateSchemeFactory;-><init>(Lorg/apache/http/impl/auth/SpnegoTokenGenerator;Z)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/impl/auth/SpnegoTokenGenerator;)V
    .locals 1
    .param p1, "spengoGenerator"    # Lorg/apache/http/impl/auth/SpnegoTokenGenerator;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/http/impl/auth/NegotiateSchemeFactory;-><init>(Lorg/apache/http/impl/auth/SpnegoTokenGenerator;Z)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/impl/auth/SpnegoTokenGenerator;Z)V
    .locals 0
    .param p1, "spengoGenerator"    # Lorg/apache/http/impl/auth/SpnegoTokenGenerator;
    .param p2, "stripPort"    # Z

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/apache/http/impl/auth/NegotiateSchemeFactory;->spengoGenerator:Lorg/apache/http/impl/auth/SpnegoTokenGenerator;

    .line 49
    iput-boolean p2, p0, Lorg/apache/http/impl/auth/NegotiateSchemeFactory;->stripPort:Z

    .line 50
    return-void
.end method


# virtual methods
.method public getSpengoGenerator()Lorg/apache/http/impl/auth/SpnegoTokenGenerator;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/http/impl/auth/NegotiateSchemeFactory;->spengoGenerator:Lorg/apache/http/impl/auth/SpnegoTokenGenerator;

    return-object v0
.end method

.method public isStripPort()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lorg/apache/http/impl/auth/NegotiateSchemeFactory;->stripPort:Z

    return v0
.end method

.method public newInstance(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/auth/AuthScheme;
    .locals 3
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 61
    new-instance v0, Lorg/apache/http/impl/auth/NegotiateScheme;

    iget-object v1, p0, Lorg/apache/http/impl/auth/NegotiateSchemeFactory;->spengoGenerator:Lorg/apache/http/impl/auth/SpnegoTokenGenerator;

    iget-boolean v2, p0, Lorg/apache/http/impl/auth/NegotiateSchemeFactory;->stripPort:Z

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/auth/NegotiateScheme;-><init>(Lorg/apache/http/impl/auth/SpnegoTokenGenerator;Z)V

    return-object v0
.end method
