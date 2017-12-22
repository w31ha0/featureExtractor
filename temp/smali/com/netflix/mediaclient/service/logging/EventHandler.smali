.class public interface abstract Lcom/netflix/mediaclient/service/logging/EventHandler;
.super Ljava/lang/Object;
.source "EventHandler.java"


# virtual methods
.method public abstract addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V
.end method

.method public abstract canSendEvent(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract createUserSession(Lcom/netflix/mediaclient/javabridge/ui/Log$ResetSessionIdCallback;)V
.end method

.method public abstract getApplicationId()Ljava/lang/String;
.end method

.method public abstract getUserSessionId()Ljava/lang/String;
.end method

.method public abstract post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V
.end method

.method public abstract removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V
.end method

.method public abstract setAppIdSetListener(Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdSetListener;)V
.end method
