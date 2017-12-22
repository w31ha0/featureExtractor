.class public interface abstract Lcom/netflix/mediaclient/media/Subtitle;
.super Ljava/lang/Object;
.source "Subtitle.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/netflix/mediaclient/media/Subtitle;",
        ">;"
    }
.end annotation


# static fields
.field public static final CLOSED_CAPTION_SUBTITLE:I = 0x2

.field public static final COMMENTARY:I = 0x4

.field public static final DESCRIPTIONS:I = 0x5

.field public static final FORCED_NARRATIVE:I = 0x6

.field public static final NONE:I = 0x7

.field public static final PRIMARY_SUBTITLE:I = 0x1

.field public static final SUBTITLES:I = 0x3

.field public static final UNKNOWN_SUBTITLE:I


# virtual methods
.method public abstract canDeviceRender()Z
.end method

.method public abstract getDownloadableId()Ljava/lang/String;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getLanguageCodeIso639_1()Ljava/lang/String;
.end method

.method public abstract getLanguageCodeIso639_2()Ljava/lang/String;
.end method

.method public abstract getLanguageDescription()Ljava/lang/String;
.end method

.method public abstract getNccpOrderNumber()I
.end method

.method public abstract getTrackType()I
.end method

.method public abstract isCC()Z
.end method

.method public abstract isForcedNarrativeOrNone()Z
.end method

.method public abstract toJson()Lorg/json/JSONObject;
.end method
