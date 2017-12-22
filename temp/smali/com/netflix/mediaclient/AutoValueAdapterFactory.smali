.class public abstract Lcom/netflix/mediaclient/AutoValueAdapterFactory;
.super Ljava/lang/Object;
.source "AutoValueAdapterFactory.java"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/google/gson/TypeAdapterFactory;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/netflix/mediaclient/AutoValueGson_AutoValueAdapterFactory;

    invoke-direct {v0}, Lcom/netflix/mediaclient/AutoValueGson_AutoValueAdapterFactory;-><init>()V

    return-object v0
.end method
