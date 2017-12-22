.class public interface abstract Lcom/netflix/mediaclient/javabridge/ui/Nrdp;
.super Ljava/lang/Object;
.source "Nrdp.java"


# static fields
.field public static final ACTION_ID:Ljava/lang/String; = "ACTION_ID"

.field public static final COMPLETE:Ljava/lang/String; = "COMPLETE"

.field public static final ERROR:Ljava/lang/String; = "ERROR"

.field public static final EVENT_ObjectSyncComplete:Ljava/lang/String; = "ObjectSyncComplete"

.field public static final EVENT_background:Ljava/lang/String; = "background"

.field public static final EVENT_command:Ljava/lang/String; = "command"

.field public static final EVENT_config:Ljava/lang/String; = "config"

.field public static final EVENT_fatalerror:Ljava/lang/String; = "fatalerror"

.field public static final EVENT_nrdconf:Ljava/lang/String; = "nrdconf"

.field public static final NAME:Ljava/lang/String; = ""

.field public static final NETWORK_ERROR:Ljava/lang/String; = "NETWORK_ERROR"

.field public static final PATH:Ljava/lang/String; = "nrdp"

.field public static final READY:Ljava/lang/String; = "READY"


# virtual methods
.method public abstract addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V
.end method

.method public abstract debug()Z
.end method

.method public abstract exit()V
.end method

.method public abstract getASPlayer()Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;
.end method

.method public abstract getConfigList()V
.end method

.method public abstract getDevice()Lcom/netflix/mediaclient/javabridge/ui/Device;
.end method

.method public abstract getLog()Lcom/netflix/mediaclient/javabridge/ui/Log;
.end method

.method public abstract getMdxController()Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;
.end method

.method public abstract getStorage()Lcom/netflix/mediaclient/javabridge/ui/Storage;
.end method

.method public abstract isReady()Z
.end method

.method public abstract now()J
.end method

.method public abstract removeEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V
.end method

.method public abstract setConfigData(Ljava/lang/String;Ljava/lang/String;)V
.end method
