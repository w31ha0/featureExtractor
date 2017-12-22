.class public interface abstract Lcom/netflix/mediaclient/javabridge/NrdpObject;
.super Ljava/lang/Object;
.source "NrdpObject.java"


# static fields
.field public static final NEED_FURTHER_HANDLE:I = 0x0

.field public static final NEED_PUBLISH:I = -0x1

.field public static final NO_MORE_HANDLE:I = 0x1


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract processUpdate(Lorg/json/JSONObject;)I
.end method
