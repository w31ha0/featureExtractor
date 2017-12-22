.class public Lcom/netflix/mediaclient/event/nrdp/device/LanguageChange;
.super Lcom/netflix/mediaclient/event/nrdp/device/BaseDeviceEvent;
.source "LanguageChange.java"


# static fields
.field private static final ATTR_OLD:Ljava/lang/String; = "old"

.field public static final TYPE:Ljava/lang/String; = "languagechange"


# instance fields
.field private old:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 32
    const-string/jumbo v0, "languagechange"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/event/nrdp/device/BaseDeviceEvent;-><init>(Ljava/lang/String;)V

    .line 33
    if-nez p1, :cond_0

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Old language is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/event/nrdp/device/LanguageChange;->old:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public getData()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 43
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 44
    const-string/jumbo v1, "old"

    iget-object v2, p0, Lcom/netflix/mediaclient/event/nrdp/device/LanguageChange;->old:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    const-string/jumbo v1, "type"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/event/nrdp/device/LanguageChange;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    return-object v0
.end method
