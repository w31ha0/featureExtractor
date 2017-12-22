.class public interface abstract Lcom/netflix/msl/crypto/ICryptoContext;
.super Ljava/lang/Object;
.source "ICryptoContext.java"


# virtual methods
.method public abstract decrypt([BLcom/netflix/msl/io/MslEncoderFactory;)[B
.end method

.method public abstract encrypt([BLcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B
.end method

.method public abstract sign([BLcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B
.end method

.method public abstract unwrap([BLcom/netflix/msl/io/MslEncoderFactory;)[B
.end method

.method public abstract verify([B[BLcom/netflix/msl/io/MslEncoderFactory;)Z
.end method

.method public abstract wrap([BLcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B
.end method
