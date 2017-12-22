.class public interface abstract Lcom/netflix/mediaclient/javabridge/ui/Storage;
.super Ljava/lang/Object;
.source "Storage.java"


# static fields
.field public static final EVENT_overbudget:Ljava/lang/String; = "overbudget"

.field public static final NAME:Ljava/lang/String; = "storage"

.field public static final NO_DEVICE_ACCOUNT:Ljava/lang/String; = "NDAKADN"

.field public static final PATH:Ljava/lang/String; = "nrdp.storage"


# virtual methods
.method public abstract addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V
.end method

.method public abstract clear(Ljava/lang/String;)V
.end method

.method public abstract clearAll()V
.end method

.method public abstract getItem(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract key(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract length(Ljava/lang/String;)I
.end method

.method public abstract removeEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V
.end method

.method public abstract removeItem(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract size()I
.end method
