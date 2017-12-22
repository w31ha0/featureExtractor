.class public interface abstract Lcom/netflix/mediaclient/javabridge/ui/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "log"

.field public static final PATH:Ljava/lang/String; = "nrdp.log"


# virtual methods
.method public abstract getAppId()Ljava/lang/String;
.end method

.method public abstract getSessionId()Ljava/lang/String;
.end method

.method public abstract getXid()Ljava/lang/String;
.end method

.method public abstract resetAppID()V
.end method

.method public abstract resetSessionID(Lcom/netflix/mediaclient/javabridge/ui/Log$ResetSessionIdCallback;)V
.end method

.method public abstract setAppIdChangedListener(Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdChangedListener;)V
.end method

.method public abstract setAppIdSetListener(Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdSetListener;)V
.end method
