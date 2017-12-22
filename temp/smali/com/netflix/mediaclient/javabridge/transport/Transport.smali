.class public interface abstract Lcom/netflix/mediaclient/javabridge/transport/Transport;
.super Ljava/lang/Object;
.source "Transport.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract connect()V
.end method

.method public abstract disconnect()V
.end method

.method public abstract invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V
.end method

.method public abstract invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract uiLoaded()V
.end method

.method public abstract uiUnloaded()V
.end method
