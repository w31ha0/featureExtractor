.class public Lorg/apache/http/impl/auth/NTLMSchemeFactory;
.super Ljava/lang/Object;
.source "NTLMSchemeFactory.java"

# interfaces
.implements Lorg/apache/http/auth/AuthSchemeFactory;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/auth/AuthScheme;
    .locals 2
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 47
    new-instance v0, Lorg/apache/http/impl/auth/NTLMScheme;

    new-instance v1, Lorg/apache/http/impl/auth/NTLMEngineImpl;

    invoke-direct {v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/http/impl/auth/NTLMScheme;-><init>(Lorg/apache/http/impl/auth/NTLMEngine;)V

    return-object v0
.end method
