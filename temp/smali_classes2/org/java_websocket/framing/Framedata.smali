.class public interface abstract Lorg/java_websocket/framing/Framedata;
.super Ljava/lang/Object;
.source "Framedata.java"


# virtual methods
.method public abstract getOpcode()Lorg/java_websocket/framing/Framedata$Opcode;
.end method

.method public abstract getPayloadData()Ljava/nio/ByteBuffer;
.end method

.method public abstract getTransfereMasked()Z
.end method

.method public abstract isFin()Z
.end method
