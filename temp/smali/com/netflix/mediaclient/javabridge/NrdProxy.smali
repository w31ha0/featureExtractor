.class public interface abstract Lcom/netflix/mediaclient/javabridge/NrdProxy;
.super Ljava/lang/Object;
.source "NrdProxy.java"


# virtual methods
.method public abstract connect()V
.end method

.method public abstract destroy()V
.end method

.method public abstract disconnect()V
.end method

.method public abstract findObjectCache(Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/NrdpObject;
.end method

.method public abstract init(Ljava/lang/String;)V
.end method

.method public abstract invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V
.end method

.method public abstract invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract postCrashReport(Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;)V
.end method

.method public abstract processUpdate(Ljava/lang/String;)V
.end method

.method public abstract removeCrashListener()V
.end method

.method public abstract setCrashListener(Lcom/netflix/mediaclient/javabridge/error/CrashListener;)V
.end method

.method public abstract setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
