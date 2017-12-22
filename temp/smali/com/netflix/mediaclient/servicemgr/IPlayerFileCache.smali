.class public interface abstract Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;
.super Ljava/lang/Object;
.source "IPlayerFileCache.java"


# static fields
.field public static final MASTER_INDEX_NAME:Ljava/lang/String; = "master.idx"

.field public static final SEGMENT_INDEX_NAME:Ljava/lang/String; = "segment.idx"

.field public static final TEXT_SUBTITLE_METADATA:Ljava/lang/String; = "manifest_ttml.xml"


# virtual methods
.method public abstract getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getSubtitleCache(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract moveFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract saveFile(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
.end method
