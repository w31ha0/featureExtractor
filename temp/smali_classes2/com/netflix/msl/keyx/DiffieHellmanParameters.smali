.class public interface abstract Lcom/netflix/msl/keyx/DiffieHellmanParameters;
.super Ljava/lang/Object;
.source "DiffieHellmanParameters.java"


# virtual methods
.method public abstract getParameterSpec(Ljava/lang/String;)Ljavax/crypto/spec/DHParameterSpec;
.end method

.method public abstract getParameterSpecs()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljavax/crypto/spec/DHParameterSpec;",
            ">;"
        }
    .end annotation
.end method
